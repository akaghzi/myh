class Disease < ActiveRecord::Base
  has_many :medical_histories
end
