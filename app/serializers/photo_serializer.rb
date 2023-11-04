class PhotoSerializer
  include JSONAPI::Serializer
  attributes :id, :image, :image_url, :pet_name, :caption, :created_at
end
