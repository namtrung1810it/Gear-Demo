require 'test_helper'

class GearsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gear = gears(:one)
  end

  test "should get index" do
    get gears_url, as: :json
    assert_response :success
  end

  test "should create gear" do
    assert_difference('Gear.count') do
      post gears_url, params: { gear: { brand_id: @gear.brand_id, name: @gear.name, price: @gear.price, type_id: @gear.type_id } }, as: :json
    end

    assert_response 201
  end

  test "should show gear" do
    get gear_url(@gear), as: :json
    assert_response :success
  end

  test "should update gear" do
    patch gear_url(@gear), params: { gear: { brand_id: @gear.brand_id, name: @gear.name, price: @gear.price, type_id: @gear.type_id } }, as: :json
    assert_response 200
  end

  test "should destroy gear" do
    assert_difference('Gear.count', -1) do
      delete gear_url(@gear), as: :json
    end

    assert_response 204
  end
end
