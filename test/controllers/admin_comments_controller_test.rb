require "test_helper"

class AdminCommentsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/admin_comments.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal AdminComment.count, data.length
  end

  test "create" do
    assert_difference "AdminComment.count", 1 do
      post "/admin_comments.json", params: { name: "lake", width: 800, height: 600 }
      assert_response 200
    end
  end
end
