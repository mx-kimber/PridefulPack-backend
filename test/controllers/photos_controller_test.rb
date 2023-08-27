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
end
