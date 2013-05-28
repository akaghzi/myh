class VitalSign < ActiveRecord::Base
  belongs_to :visit
  validates :visit_id, :temperature, :heart_rate, :respiratory_rate, presence: true
end
