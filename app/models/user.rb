class User < ApplicationRecord
  has_many :admin_comments
  has_many :reviews

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
