require 'test_helper'

class TaxisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @taxi = taxis(:one)
  end

  test "should get index" do
    get taxis_url
    assert_response :success
  end

  test "should create taxi" do
    assert_difference('Taxi.count') do
      post taxis_url, params: { taxi: { taxi_availability: @taxi.taxi_availability, taxi_number: @taxi.taxi_number } }
    end

    assert_response 201
  end

  test "should show taxi" do
    get taxi_url(@taxi)
    assert_response :success
  end

  test "should update taxi" do
    patch taxi_url(@taxi), params: { taxi: { taxi_availability: @taxi.taxi_availability, taxi_number: @taxi.taxi_number } }
    assert_response 200
  end

  test "should destroy taxi" do
    assert_difference('Taxi.count', -1) do
      delete taxi_url(@taxi)
    end

    assert_response 204
  end
end
