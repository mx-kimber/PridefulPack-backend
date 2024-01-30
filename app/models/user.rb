class User < ApplicationRecord
  has_many :admin_comments
  has_many :reviews
  has_many :social_media_accounts
  has_many :social_media_categories, through: :social_media_accounts
  has_many :service_offerings

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
