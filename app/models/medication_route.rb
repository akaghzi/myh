class MedicationRoute < ActiveRecord::Base
  validates :full_name, :description, :short_name, presence: true
  validates :full_name, :short_name, uniqueness: {case_sensitive: false}
end
