class Commuter < ActiveRecord::Base
  has_many :appointments
  has_secure_password
  validates :email, :password_digest, :name, presence: true
end
