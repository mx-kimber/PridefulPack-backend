require "test_helper"

class PhotosControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/photos.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Photo.count, data.length
  end

  test "create" do
    assert_difference "Photo.count", 1 do
      post "/photos.json", params: { pet_photo: "petphotoURL.com", pet_name: "Beavis", caption: "The best boy!" }
      assert_response 200
    end
  end

  test "show" do
    get "/photos/#{Photo.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "pet_photo", "pet_name", "caption", "created_at", "updated_at"], data.keys
  end

  test "update" do
    photo = Photo.first
    patch "/photos/#{photo.id}.json", params: { pet_name: "Updated pet name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated pet name", data["pet_name"]
  end
end
