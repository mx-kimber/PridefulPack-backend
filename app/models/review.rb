class Review < ApplicationRecord
  belongs_to :reviewer
  has_many :admin_comments
end
