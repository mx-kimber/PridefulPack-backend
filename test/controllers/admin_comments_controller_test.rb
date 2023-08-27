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
      post "/admin_comments.json", params: { review_id: 3, user_id: 1, admin_comment: "Thank you so much, you're the best!"}
      assert_response 200
    end
  end

  test "show" do
    get "/admin_comments/#{AdminComment.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "review_id", "user_id", "admin_comment", "created_at", "updated_at"], data.keys
  end
end
