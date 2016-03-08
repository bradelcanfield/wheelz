class Commuter < ActiveRecord::Base
  has_many :microposts, dependent: :destroy
  has_many :appointments
  has_many :microposts
  has_many :routes
  has_secure_password
  validates :email, :password_digest, :name, presence: true
end
