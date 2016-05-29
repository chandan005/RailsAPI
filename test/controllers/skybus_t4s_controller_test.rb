require 'test_helper'

class SkybusT4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skybus_t4 = skybus_t4s(:one)
  end

  test "should get index" do
    get skybus_t4s_url
    assert_response :success
  end

  test "should create skybus_t4" do
    assert_difference('SkybusT4.count') do
      post skybus_t4s_url, params: { skybus_t4: { timetable: @skybus_t4.timetable } }
    end

    assert_response 201
  end

  test "should show skybus_t4" do
    get skybus_t4_url(@skybus_t4)
    assert_response :success
  end

  test "should update skybus_t4" do
    patch skybus_t4_url(@skybus_t4), params: { skybus_t4: { timetable: @skybus_t4.timetable } }
    assert_response 200
  end

  test "should destroy skybus_t4" do
    assert_difference('SkybusT4.count', -1) do
      delete skybus_t4_url(@skybus_t4)
    end

    assert_response 204
  end
end
