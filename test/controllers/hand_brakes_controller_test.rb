require "test_helper"

class HandBrakesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hand_brake = hand_brakes(:one)
  end

  test "should get index" do
    get hand_brakes_url, as: :json
    assert_response :success
  end

  test "should create hand_brake" do
    assert_difference('HandBrake.count') do
      post hand_brakes_url, params: { hand_brake: { name: @hand_brake.name } }, as: :json
    end

    assert_response 201
  end

  test "should show hand_brake" do
    get hand_brake_url(@hand_brake), as: :json
    assert_response :success
  end

  test "should update hand_brake" do
    patch hand_brake_url(@hand_brake), params: { hand_brake: { name: @hand_brake.name } }, as: :json
    assert_response 200
  end

  test "should destroy hand_brake" do
    assert_difference('HandBrake.count', -1) do
      delete hand_brake_url(@hand_brake), as: :json
    end

    assert_response 204
  end
end
