class Surgery < ActiveRecord::Base
  belongs_to :patient
  validates :surgery_type, :surgery_date, presence: true
end
