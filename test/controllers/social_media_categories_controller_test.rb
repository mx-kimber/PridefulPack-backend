require "test_helper"

class SocialMediaCategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get social_media_categories_show_url
    assert_response :success
  end
end
