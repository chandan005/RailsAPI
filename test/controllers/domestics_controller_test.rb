require 'test_helper'

class DomesticsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @domestic = domestics(:one)
  end

  test "should get index" do
    get domestics_url
    assert_response :success
  end

  test "should create domestic" do
    assert_difference('Domestic.count') do
      post domestics_url, params: { domestic: { mac_address: @domestic.mac_address, tapped_timestamp: @domestic.tapped_timestamp } }
    end

    assert_response 201
  end

  test "should show domestic" do
    get domestic_url(@domestic)
    assert_response :success
  end

  test "should update domestic" do
    patch domestic_url(@domestic), params: { domestic: { mac_address: @domestic.mac_address, tapped_timestamp: @domestic.tapped_timestamp } }
    assert_response 200
  end

  test "should destroy domestic" do
    assert_difference('Domestic.count', -1) do
      delete domestic_url(@domestic)
    end

    assert_response 204
  end
end
