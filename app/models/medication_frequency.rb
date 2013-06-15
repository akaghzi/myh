class MedicationFrequency < ActiveRecord::Base
  has_many :current_medications
  validates :full_name, :description, :short_name, presence: true
  validates :full_name, :short_name, uniqueness: {case_sensitive: false}
end
