class RegQuestion < ActiveRecord::Base
  # attr_accessible :content, :min_age, :sex
  has_many :reg_answers
  has_many :patients, through: :reg_answers
  validates :content, :minimum_age, :sex, presence: true
  validates :minimum_age, numericality: true
  validates :content, length: {maximum: 200}
  validates :sex, inclusion: {in: ["male", "female", "both"]}
  before_save { |reg_question| reg_question.content = content.downcase }
end
