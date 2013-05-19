class User < ActiveRecord::Base
  has_secure_password
  before_validation(on: :update) do
    # only want confirmation validation to run if user enters password
    self.password_confirmation = nil unless self.password.present?
  end
  validates :user_type, presence: true, inclusion: {in: VALID_USER_TYPE}
  validates :username, presence: true, length: {in: 6..20}, uniqueness: {case_sensitive: false}
  validates :first_name,:last_name, presence: true, length: {in: 3..20}
end
