class VitalSign < ActiveRecord::Base
  belongs_to :visit
  validates :visit_id, presence: true
end
