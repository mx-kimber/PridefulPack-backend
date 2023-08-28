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

  test "show" do
    get "/reviewers/#{Reviewer.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "source", "uid", "email", "name", "created_at", "updated_at"], data.keys
  end

  test "update" do
    reviewer = Reviewer.first
    patch "/reviewers/#{reviewer.id}.json", params: { source: "Updated source" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated source", data["source"]
  end

  test "destroy" do
    assert_difference "Reviewer.count", -1 do
      delete "/reviewers/#{Reviewer.first.id}.json"
      assert_response 200
    end
  end
end
