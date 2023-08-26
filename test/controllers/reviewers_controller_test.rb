require "test_helper"

class ReviewersControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/reviewers.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Reviewer.count, data.length
  end
end
