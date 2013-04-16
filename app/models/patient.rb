class Patient < ActiveRecord::Base
  # attr_accessible :date_of_birth, :first_name, :last_name, :middle_name, :phone, :sex, :reg_answers_attributes
  has_many :reg_answers
  has_many :questions, through: :reg_answers
  validates :date_of_birth, :first_name, :last_name, :phone, :sex, presence: true
  validates :sex, inclusion: {in: VALID_SEX}
  validates :phone, format: {with: VALID_PHONE_REGEX}
  validates :first_name, :middle_name, :last_name, length: {maximum: 40}
  validate :valid_date_of_birth
  accepts_nested_attributes_for :reg_answers
  before_save { |patient| patient.first_name = first_name.downcase }
  before_save { |patient| patient.middle_name = middle_name.downcase }
  before_save { |patient| patient.last_name = last_name.downcase }
  before_save { |patient| patient.sex = sex.downcase }
  after_create :add_answers_for_patient
  def full_name
    self.last_name + ', ' + self.first_name + ' ' + self.middle_name
  end
  # def search(search)
  #   if search
  #     find(:all, :conditions => ["last_name||' '||first_name||' '||middle_name LIKE ?", "%#{search}%"])
  #   else
  #     find(:all)
  #   end
  # end
  def age
    Date.today.year-self.date_of_birth.year
  end
  private
  def valid_date_of_birth
    errors.add(:date_of_birth, "must be a valid date of birth") if (date_of_birth > Date.today )
  end
  def add_answers_for_patient
    # find all relevant questions
    questions = RegQuestion.where("(sex='both' OR sex='#{self.sex}') AND minimum_age<'#{self.age}'")
    # prepare answers for patient registration
    questions.each do | question |
      self.reg_answers.create(patient_id: self.id,reg_question_id: question.id)
    end
  end
end