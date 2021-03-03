require "test_helper"

class SuspensionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @suspension = suspensions(:one)
  end

  test "should get index" do
    get suspensions_url, as: :json
    assert_response :success
  end

  test "should create suspension" do
    assert_difference('Suspension.count') do
      post suspensions_url, params: { suspension: { brand: @suspension.brand, name: @suspension.name } }, as: :json
    end

    assert_response 201
  end

  test "should show suspension" do
    get suspension_url(@suspension), as: :json
    assert_response :success
  end

  test "should update suspension" do
    patch suspension_url(@suspension), params: { suspension: { brand: @suspension.brand, name: @suspension.name } }, as: :json
    assert_response 200
  end

  test "should destroy suspension" do
    assert_difference('Suspension.count', -1) do
      delete suspension_url(@suspension), as: :json
    end

    assert_response 204
  end
end
