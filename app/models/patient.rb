class Patient < ActiveRecord::Base
  has_one :contact_info
  has_one :insurance_info
  has_many :reg_answers
  has_many :questions, through: :reg_answers
  has_many :visits
  has_many :current_medications
  has_many :allergies
  has_many :immunizations
  has_many :surgeries
  has_many :vital_signs, through: :visits
  validates :date_of_birth, :first_name, :last_name, :phone, :gender, presence: true
  validates :gender, inclusion: {in: VALID_GENDER}
  validates :phone, format: {with: VALID_PHONE_REGEX}
  validates :first_name, :middle_name, :last_name, length: {maximum: 40}
  validates :externalid, uniqueness: true
  # validate :valid_date_of_birth
  accepts_nested_attributes_for :reg_answers
  before_save { |patient| patient.first_name = first_name.downcase }
  before_save { |patient| patient.middle_name = middle_name.downcase }
  before_save { |patient| patient.last_name = last_name.downcase }
  before_save { |patient| patient.gender = gender.downcase }
  after_create :add_answers_for_patient
  def full_name
    "#{last_name}, #{first_name} #{middle_name}"
  end
  def age
    # Date.today.year-date_of_birth.year
    ((Date.today-date_of_birth)/365.25).to_i
  end
  private
  def valid_date_of_birth
    errors.add(:date_of_birth, "must be a valid date of birth") if ((date_of_birth | Time.now) > Date.today )
  end
  def add_answers_for_patient
    # find all relevant questions
    questions = RegQuestion.where("(gender='both' OR gender='#{self.gender}') AND minimum_age<'#{self.age}'")
    # prepare answers for patient registration
    questions.sort.each do | question |
      self.reg_answers.create(patient_id: self.id,reg_question_id: question.id)
    end
  end 
end
