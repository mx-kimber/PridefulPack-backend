json.extract! user, :id, :first_name, :last_name, :email, :phone_number, :profile_photo, :admin_permission, :bio
json.created_at user.created_at.strftime('%m-%d-%Y %I:%M %p %Z')
json.updated_at user.updated_at.strftime('%m-%d-%Y %I:%M %p %Z')

