require "test_helper"

class EnginesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @engine = engines(:one)
  end

  test "should get index" do
    get engines_url, as: :json
    assert_response :success
  end

  test "should create engine" do
    assert_difference('Engine.count') do
      post engines_url, params: { engine: { engine_code: @engine.engine_code, horsepower: @engine.horsepower } }, as: :json
    end

    assert_response 201
  end

  test "should show engine" do
    get engine_url(@engine), as: :json
    assert_response :success
  end

  test "should update engine" do
    patch engine_url(@engine), params: { engine: { engine_code: @engine.engine_code, horsepower: @engine.horsepower } }, as: :json
    assert_response 200
  end

  test "should destroy engine" do
    assert_difference('Engine.count', -1) do
      delete engine_url(@engine), as: :json
    end

    assert_response 204
  end
end
