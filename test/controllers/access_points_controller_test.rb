require 'test_helper'

class AccessPointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @access_point = access_points(:one)
  end

  test "should get index" do
    get access_points_url
    assert_response :success
  end

  test "should create access_point" do
    assert_difference('AccessPoint.count') do
      post access_points_url, params: { access_point: { bssid: @access_point.bssid, mac_address: @access_point.mac_address, nearby_point: @access_point.nearby_point, ssid: @access_point.ssid } }
    end

    assert_response 201
  end

  test "should show access_point" do
    get access_point_url(@access_point)
    assert_response :success
  end

  test "should update access_point" do
    patch access_point_url(@access_point), params: { access_point: { bssid: @access_point.bssid, mac_address: @access_point.mac_address, nearby_point: @access_point.nearby_point, ssid: @access_point.ssid } }
    assert_response 200
  end

  test "should destroy access_point" do
    assert_difference('AccessPoint.count', -1) do
      delete access_point_url(@access_point)
    end

    assert_response 204
  end
end
