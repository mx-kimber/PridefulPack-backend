json.extract! reviewer, :id, :source, :uid, :email, :name
json.created_at reviewer.created_at.strftime('%m-%d-%Y %I:%M %p %Z')
json.updated_at reviewer.updated_at.strftime('%m-%d-%Y %I:%M %p %Z')
