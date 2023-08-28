json.extract! reviewer, :id, :source, :uid, :email, :name
json.created_at reviewer.created_at.strftime('%m-%d-%Y %I:%M %p %Z')
json.updated_at reviewer.updated_at.strftime('%m-%d-%Y %I:%M %p %Z')

if reviewer.reviews.present?
  json.reviews reviewer.reviews do |review|
    json.extract! review, :id, :rating, :comment, :created_at, :updated_at

    if review.admin_comments.present?
      json.admin_comments review.admin_comments do |admin_comment|
        json.extract! admin_comment, :id, :comment
        if admin_comment.user.present?
          json.user do
            json.name "#{admin_comment.user.first_name} #{admin_comment.user.last_name}"
            json.email admin_comment.user.email
          end
        end
      end
    end
  end
end


