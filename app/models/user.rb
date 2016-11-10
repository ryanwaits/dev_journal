class User < ApplicationRecord
  before_create :generate_auth_token

  has_secure_password
  validates_presence_of :first_name, :last_name, :username, :email, :password

  has_many :tasks

  def generate_auth_token
    self.auth_token = SecureRandom.hex
  end

end
