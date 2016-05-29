require 'test_helper'

class InternationalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @international = internationals(:one)
  end

  test "should get index" do
    get internationals_url
    assert_response :success
  end

  test "should create international" do
    assert_difference('International.count') do
      post internationals_url, params: { international: { mac_address: @international.mac_address, tapped_timestamp: @international.tapped_timestamp } }
    end

    assert_response 201
  end

  test "should show international" do
    get international_url(@international)
    assert_response :success
  end

  test "should update international" do
    patch international_url(@international), params: { international: { mac_address: @international.mac_address, tapped_timestamp: @international.tapped_timestamp } }
    assert_response 200
  end

  test "should destroy international" do
    assert_difference('International.count', -1) do
      delete international_url(@international)
    end

    assert_response 204
  end
end
