require "test_helper"

class RollcagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rollcage = rollcages(:one)
  end

  test "should get index" do
    get rollcages_url, as: :json
    assert_response :success
  end

  test "should create rollcage" do
    assert_difference('Rollcage.count') do
      post rollcages_url, params: { rollcage: { brand: @rollcage.brand, name: @rollcage.name } }, as: :json
    end

    assert_response 201
  end

  test "should show rollcage" do
    get rollcage_url(@rollcage), as: :json
    assert_response :success
  end

  test "should update rollcage" do
    patch rollcage_url(@rollcage), params: { rollcage: { brand: @rollcage.brand, name: @rollcage.name } }, as: :json
    assert_response 200
  end

  test "should destroy rollcage" do
    assert_difference('Rollcage.count', -1) do
      delete rollcage_url(@rollcage), as: :json
    end

    assert_response 204
  end
end
