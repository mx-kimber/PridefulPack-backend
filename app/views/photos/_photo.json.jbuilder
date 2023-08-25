json.extract! photo, :id, :pet_photo, :pet_name, :caption
json.created_at photo.created_at.strftime('%m-%d-%Y %I:%M %p %Z')
json.updated_at photo.updated_at.strftime('%m-%d-%Y %I:%M %p %Z')
