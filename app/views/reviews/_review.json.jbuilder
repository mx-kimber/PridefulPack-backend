json.extract! review, :id, :created_at, :updated_at
json.created_at review.created_at.strftime('%m-%d-%Y %I:%M %p %Z')
json.updated_at review.updated_at.strftime('%m-%d-%Y %I:%M %p %Z')
