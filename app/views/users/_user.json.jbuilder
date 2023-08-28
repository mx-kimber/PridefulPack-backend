json.extract! user, :id, :first_name, :last_name, :email, :phone_number, :profile_photo, :admin_permission, :bio
json.created_at user.created_at.strftime('%m-%d-%Y %I:%M %p %Z')
json.updated_at user.updated_at.strftime('%m-%d-%Y %I:%M %p %Z')

if user.admin_comments.present?
  json.admin_comments user.admin_comments do |admin_comment|
    json.extract! admin_comment, :id, :user_id, :review_id, :comment
    
    if admin_comment.review.present?
      json.review do
        json.extract! admin_comment.review, :id, :rating, :comment     
        
        if admin_comment.review.reviewer.present?
          json.reviewer do
            json.extract! admin_comment.review.reviewer, :id, :source, :uid, :email, :name
          end
        end
      end
    end
  end
end
