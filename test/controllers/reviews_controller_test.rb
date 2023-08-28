require "test_helper"

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/reviews.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Review.count, data.length
  end

  test "create" do
    assert_difference "Review.count", 1 do
      post "/reviews.json", params: { reviewer_id: 4, 
        rating: 4, 
        comment: "something good here"}
      assert_response 200
    end
  end

  test "show" do
    get "/reviews/#{Review.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "reviewer_id", "rating", "comment", "created_at", "updated_at"], data.keys
  end

  test "update" do
    review = Review.first
    patch "/reviews/#{review.id}.json", params: { comment: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["comment"]
  end
end
