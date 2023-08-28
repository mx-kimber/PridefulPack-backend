require "test_helper"

class ServiceOfferingsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/service_offerings.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ServiceOffering.count, data.length
  end

  test "create" do
  #note to self: set instance to accept the array and join
    @extra_service = ["bathing/nail trims", "etc"]
    
    assert_difference "ServiceOffering.count", 1 do
      post "/service_offerings.json", params: {
        service: "Dog Sitting - in home",
        duration: "one night",
        price: "$60",
        included: "taking trash out/mail in/bath and nail trim?",
        extra_service: @extra_service.join(',')
      }
      
      assert_response 200
    end
  end

  test "show" do
    get "/service_offerings/#{ServiceOffering.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "service", "price", "duration", "included", "extra_service", "created_at", "updated_at",], data.keys
  end

  test "update" do
    service_offering = ServiceOffering.first
    patch "/service_offerings/#{service_offering.id}.json", params: { service: "Updated service" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated service", data["service"]
  end
end
