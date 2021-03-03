require "test_helper"

class DifferentialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @differential = differentials(:one)
  end

  test "should get index" do
    get differentials_url, as: :json
    assert_response :success
  end

  test "should create differential" do
    assert_difference('Differential.count') do
      post differentials_url, params: { differential: { brand: @differential.brand, name: @differential.name } }, as: :json
    end

    assert_response 201
  end

  test "should show differential" do
    get differential_url(@differential), as: :json
    assert_response :success
  end

  test "should update differential" do
    patch differential_url(@differential), params: { differential: { brand: @differential.brand, name: @differential.name } }, as: :json
    assert_response 200
  end

  test "should destroy differential" do
    assert_difference('Differential.count', -1) do
      delete differential_url(@differential), as: :json
    end

    assert_response 204
  end
end
