require 'test_helper'

class SkybusT3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skybus_t3 = skybus_t3s(:one)
  end

  test "should get index" do
    get skybus_t3s_url
    assert_response :success
  end

  test "should create skybus_t3" do
    assert_difference('SkybusT3.count') do
      post skybus_t3s_url, params: { skybus_t3: { timetable: @skybus_t3.timetable } }
    end

    assert_response 201
  end

  test "should show skybus_t3" do
    get skybus_t3_url(@skybus_t3)
    assert_response :success
  end

  test "should update skybus_t3" do
    patch skybus_t3_url(@skybus_t3), params: { skybus_t3: { timetable: @skybus_t3.timetable } }
    assert_response 200
  end

  test "should destroy skybus_t3" do
    assert_difference('SkybusT3.count', -1) do
      delete skybus_t3_url(@skybus_t3)
    end

    assert_response 204
  end
end
