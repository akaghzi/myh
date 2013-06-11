class ContraceptiveHistory < ActiveRecord::Base
  belongs_to :patient
  validates :contraceptive_type, uniqueness: {scope: :patient}
end
