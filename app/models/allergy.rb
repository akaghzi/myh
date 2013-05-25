class Allergy < ActiveRecord::Base
  belongs_to :patient
  validates :substance_name, :substance_type, :reaction, presence: true
  validates :substance_type, inclusion: {in: VALID_SUBSTANCETYPE }
  validates :substance_name, uniqueness: {case_sensitive: false}
end