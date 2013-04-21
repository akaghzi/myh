class Visit < ActiveRecord::Base
  belongs_to :patient
  validates :patient_id, :visit_date, :visit_reason, presence: true
   
end
