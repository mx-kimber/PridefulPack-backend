json.extract! user, :id, :admin_permission, :first_name, :last_name, :email, :phone_number, :profile_photo

json.address do
  json.extract! user, :street_address, :unit_number, :city, :state, :zip_code
end

social_media_accounts_by_category = user.social_media_categories.flat_map(&:social_media_accounts)
  .group_by { |account| account.social_media_category.platform }
  .transform_values { |accounts| accounts.uniq(&:account_handle) }

json.social_media_accounts social_media_accounts_by_category do |platform, accounts|
  json.platform_name platform

  json.accounts accounts do |account|
    json.account do
      json.account_handle account.account_handle
      json.account_URL account.account_URL
    end
  end
end

json.bio do
  json.extract! user, :bio
end

json.created_at user.created_at.strftime('%m-%d-%Y %I:%M %p %Z')
json.updated_at user.updated_at.strftime('%m-%d-%Y %I:%M %p %Z')

# if user.photos.present?
#   json.photos user.photos do |photo|
#     json.extract! photo, :id, :pet_photo, :pet_name, :caption
#   end
# end

# if user.service_offerings.present?
#   json.service_offerings user.service_offerings do |service_offering|
#     json.extract! service_offering, :id, :service, :price, :duration, :included, :extra_service
#   end
# end

# if user.admin_comments.present?
#   json.admin_comments user.admin_comments do |admin_comment|
#     json.extract! admin_comment, :id, :review_id, :comment
    
#     if admin_comment.review.present?
#       json.review do
#         json.extract! admin_comment.review, :id, :rating, :comment     
        
#         if admin_comment.review.reviewer.present?
#           json.reviewer do
#             json.extract! admin_comment.review.reviewer, :id, :source, :uid, :email, :name
#           end
#         end
#       end
#     end
#   end
# end
