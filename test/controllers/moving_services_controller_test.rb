require 'test_helper'

class MovingServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @moving_service = moving_services(:one)
  end

  test "should get index" do
    get moving_services_url
    assert_response :success
  end

  test "should get new" do
    get new_moving_service_url
    assert_response :success
  end

  test "should create moving_service" do
    assert_difference('MovingService.count') do
      post moving_services_url, params: { moving_service: { age: @moving_service.age, email: @moving_service.email, items: @moving_service.items, last_name: @moving_service.last_name, name: @moving_service.name, number: @moving_service.number } }
    end

    assert_redirected_to moving_service_url(MovingService.last)
  end

  test "should show moving_service" do
    get moving_service_url(@moving_service)
    assert_response :success
  end

  test "should get edit" do
    get edit_moving_service_url(@moving_service)
    assert_response :success
  end

  test "should update moving_service" do
    patch moving_service_url(@moving_service), params: { moving_service: { age: @moving_service.age, email: @moving_service.email, items: @moving_service.items, last_name: @moving_service.last_name, name: @moving_service.name, number: @moving_service.number } }
    assert_redirected_to moving_service_url(@moving_service)
  end

  test "should destroy moving_service" do
    assert_difference('MovingService.count', -1) do
      delete moving_service_url(@moving_service)
    end

    assert_redirected_to moving_services_url
  end
end
