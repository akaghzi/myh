class ContraceptiveHistory < ActiveRecord::Base
  belongs_to :patient
  belongs_to :contraceptive
  validates :contraceptive_id, uniqueness: {scope: :patient}
end
