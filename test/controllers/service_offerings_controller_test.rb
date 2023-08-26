require "test_helper"

class ServiceOfferingsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/service_offerings.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ServiceOffering.count, data.length
  end
end
