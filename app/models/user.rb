class User < ApplicationRecord
  has_secure_password
  has_many :puppies, dependent: :delete_all

  validates  :username, presence: true, uniqueness: true
  validates :email, uniqueness: true
end
