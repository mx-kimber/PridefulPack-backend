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
      post "/admin_comments.json", params: { review_id: 3, user_id: 1, comment: "Thank you so much, you're the best!"}
      assert_response 200
    end
  end

  test "show" do
    get "/admin_comments/#{AdminComment.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "user_id", "review_id", "comment", "created_at"], data.keys
  end

  test "update" do
    comment= AdminComment.first
    patch "/admin_comments/#{comment.id}.json", params: { comment: "Updated comment" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated comment", data["comment"]
  end

  test "destroy" do
    assert_difference "AdminComment.count", -1 do
      delete "/admin_comments/#{AdminComment.first.id}.json"
      assert_response 200
    end
  end
end
