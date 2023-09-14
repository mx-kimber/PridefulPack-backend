json.extract! service_offering, :id, :service, :price, :duration, :included, :extra_service
json.created_at service_offering.created_at.strftime('%m-%d-%Y %I:%M %p %Z')
json.updated_at service_offering.updated_at.strftime('%m-%d-%Y %I:%M %p %Z')

json.user do
  json.user_id service_offering.user.id
  json.first_name service_offering.user.first_name
  json.last_name service_offering.user.last_name
  json.email service_offering.user.email
end
