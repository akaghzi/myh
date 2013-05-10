class VitalSign < ActiveRecord::Base
  belongs_to :patient
  belongs_to :visit
end
