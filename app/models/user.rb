class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :number, presence: true, uniqueness: true
end
