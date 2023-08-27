require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/photos.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Photo.count, data.length
  end

  test "create" do
    assert_difference "User.count", 1 do
      post "/users.json", params: { 
        first_name: 4, 
        last_name: 4, 
        email: "admin2@admin.com",
        phone_number: "555-555-5555",
        password_digest: "PW",
        profile_photo: "photoURL",
        admin_permission: true,
        bio: "all about me" 
      }
      assert_response 200
    end
  end
end
