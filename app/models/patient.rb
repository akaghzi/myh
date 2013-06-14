class Patient < ActiveRecord::Base
  has_one :contact_info
  has_one :insurance_info
  has_one :social_history
  has_many :reg_answers
  has_many :questions, through: :reg_answers
  has_many :visits
  has_many :current_medications
  has_many :allergies
  has_many :immunizations
  has_many :hospitalizations
  has_many :medical_histories
  has_many :menstrual_histories
  has_many :pregnancy_histories
  has_many :gynecology_histories
  has_many :contraceptive_histories
  has_many :appointments
  validates :date_of_birth, :first_name, :last_name, :phone, :gender, presence: true
  validates :gender, inclusion: {in: VALID_GENDER}
  validates :phone, format: {with: VALID_PHONE_REGEX}
  validates :first_name, :middle_name, :last_name, length: {maximum: 40}
  # validates :age, inclusion: {in: 0..120, message: " is not in normal range of 0 to 120 years"}
  validate :check_dob
  # validates :externalid, allow_null: true, uniqueness: true
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
    ((Date.today-date_of_birth)/365.25).to_i
  end
  def woman?
    if 
      gender == 'female' && age > 13
      true
    else
      false
    end
  end
  def check_dob
    self.errors.add(:date_of_birth, "is invalid") if date_of_birth > Date.today
  end
  scope :women, -> {where("gender = 'female'")}
  scope :men,  -> {where("gender = 'male'")}
  scope :children, -> {where("age <= 12")}
  
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
