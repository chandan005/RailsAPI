require 'test_helper'

class SkybusT1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skybus_t1 = skybus_t1s(:one)
  end

  test "should get index" do
    get skybus_t1s_url
    assert_response :success
  end

  test "should create skybus_t1" do
    assert_difference('SkybusT1.count') do
      post skybus_t1s_url, params: { skybus_t1: { timetable: @skybus_t1.timetable } }
    end

    assert_response 201
  end

  test "should show skybus_t1" do
    get skybus_t1_url(@skybus_t1)
    assert_response :success
  end

  test "should update skybus_t1" do
    patch skybus_t1_url(@skybus_t1), params: { skybus_t1: { timetable: @skybus_t1.timetable } }
    assert_response 200
  end

  test "should destroy skybus_t1" do
    assert_difference('SkybusT1.count', -1) do
      delete skybus_t1_url(@skybus_t1)
    end

    assert_response 204
  end
end
