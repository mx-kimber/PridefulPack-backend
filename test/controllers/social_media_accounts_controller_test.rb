require "test_helper"

class SocialMediaAccountsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get social_media_accounts_index_url
    assert_response :success
  end
end
