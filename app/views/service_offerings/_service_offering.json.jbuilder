json.extract! service_offering, :id, :service, :duration, :price, :included, :extra_service
json.created_at service_offering.created_at.strftime('%m-%d-%Y %I:%M %p %Z')
json.updated_at service_offering.updated_at.strftime('%m-%d-%Y %I:%M %p %Z')