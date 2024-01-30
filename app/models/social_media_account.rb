class SocialMediaAccount < ApplicationRecord
  belongs_to :social_media_category
  belongs_to :user
end