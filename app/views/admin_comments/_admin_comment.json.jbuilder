json.extract! admin_comment, :id, :review_id, :user_id, :comment, :created_at, :updated_at
json.created_at admin_comment.created_at.strftime('%m-%d-%Y %I:%M %p %Z')
json.updated_at admin_comment.updated_at.strftime('%m-%d-%Y %I:%M %p %Z')