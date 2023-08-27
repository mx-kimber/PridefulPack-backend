require "test_helper"

class ReviewersControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/reviewers.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Reviewer.count, data.length
  end

  test "create" do
    assert_difference "Reviewer.count", 1 do
      post "/reviewers.json", params: { source: "google", uid: "google_bart", email: "bart@simpson.com", name: "Bart Simpson" }
      assert_response 200
    end
  end
end
