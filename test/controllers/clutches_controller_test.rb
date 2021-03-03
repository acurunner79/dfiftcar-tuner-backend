require "test_helper"

class ClutchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clutch = clutches(:one)
  end

  test "should get index" do
    get clutches_url, as: :json
    assert_response :success
  end

  test "should create clutch" do
    assert_difference('Clutch.count') do
      post clutches_url, params: { clutch: { brand: @clutch.brand, stage: @clutch.stage } }, as: :json
    end

    assert_response 201
  end

  test "should show clutch" do
    get clutch_url(@clutch), as: :json
    assert_response :success
  end

  test "should update clutch" do
    patch clutch_url(@clutch), params: { clutch: { brand: @clutch.brand, stage: @clutch.stage } }, as: :json
    assert_response 200
  end

  test "should destroy clutch" do
    assert_difference('Clutch.count', -1) do
      delete clutch_url(@clutch), as: :json
    end

    assert_response 204
  end
end
