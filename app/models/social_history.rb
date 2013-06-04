class SocialHistory < ActiveRecord::Base
  belongs_to :patient
  validates :smoking_quantity, presence: true, if: :smoking
  validates :drinking_quantity, presence: true, if: :drinking
  validates :excercise_per_day, presence: true, if: :physical_excercise 
  validates :substance_type, presence: true, if: :substance_abuse
end
