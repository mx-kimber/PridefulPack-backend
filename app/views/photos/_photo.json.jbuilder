json.extract! photo, :id, :pet_photo, :pet_name, :caption
json.created_at photo.created_at.strftime('%m-%d-%Y %I:%M %p %Z')
json.updated_at photo.updated_at.strftime('%m-%d-%Y %I:%M %p %Z')

json.user do
  json.user_id photo.user.id
  json.first_name photo.user.first_name
  json.last_name photo.user.last_name
  json.email photo.user.email
end