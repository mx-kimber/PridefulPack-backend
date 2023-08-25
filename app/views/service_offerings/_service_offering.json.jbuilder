json.extract! service_offering, :id, :service, :price, :duration, :included, :extra_service, :extra_service_price
json.created_at service_offering.created_at.strftime('%m-%d-%Y %I:%M %p %Z')
json.updated_at service_offering.updated_at.strftime('%m-%d-%Y %I:%M %p %Z')