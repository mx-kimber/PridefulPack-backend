json.extract! admin_comment, :id, :user_id, :review_id, :comment, :created_at

if admin_comment.user.present?
  json.user do
    json.id admin_comment.user.id
    json.full_name "#{admin_comment.user.first_name} #{admin_comment.user.last_name}"
    json.email admin_comment.user.email
  end
end

if admin_comment.review.present?
  json.review do
    json.extract! admin_comment.review, :rating, :comment, :created_at

    json.reviewer do
      json.extract! admin_comment.review.reviewer, :name, :email if admin_comment.review.reviewer.present?
    end
  end
end