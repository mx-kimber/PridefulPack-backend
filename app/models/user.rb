class User < ApplicationRecord
  has_many :admin_comments
  has_many :reviews
end
