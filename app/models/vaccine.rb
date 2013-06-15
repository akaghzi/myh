class Vaccine < ActiveRecord::Base
  has_many :immunizations
end
