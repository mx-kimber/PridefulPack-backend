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
      post "/reviews.json", params: { reviewer_id: 3, rating: 5, comment: "MyText" }
      assert_response 200
    end
  end

  test "show" do
    get "/reviews/#{Review.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "created_at", "rating", "comment"], data.keys
  end

  test "update" do
    review = Review.first
    patch "/reviews/#{review.id}.json", params: { comment: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["comment"]
  end

  test "destroy" do
    assert_difference "Review.count", -1 do
      delete "/reviews/#{Review.first.id}.json"
      assert_response 200
    end
  end
end
