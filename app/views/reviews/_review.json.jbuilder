json.id review.id
json.created_at review.created_at
json.rating review.rating
json.comment review.comment


if review.reviewer.present?
  json.reviewer do
    json.extract! review.reviewer, :id, :name, :email
  end
end

if review.admin_comments.present?
  json.admin_comments review.admin_comments do |admin_comment|
    json.extract! admin_comment, :id, :comment
    
    if admin_comment.user.present?
      json.user do
        
        json.full_name "#{admin_comment.user.first_name} #{admin_comment.user.last_name}"
        json.created_at admin_comment.created_at
      end
    end
  end
end