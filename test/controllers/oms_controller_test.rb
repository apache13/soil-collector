require "test_helper"

class OmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @om = oms(:one)
  end

  test "should get index" do
    get oms_url
    assert_response :success
  end

  test "should get new" do
    get new_om_url
    assert_response :success
  end

  test "should create om" do
    assert_difference("Om.count") do
      post oms_url, params: { om: { FeSO4_1: @om.FeSO4_1, FeSO4_2: @om.FeSO4_2, FeSO4_3: @om.FeSO4_3, FeSO4_N2: @om.FeSO4_N2, K2CrO7_N1: @om.K2CrO7_N1, K2CrO7_V1: @om.K2CrO7_V1, OC: @om.OC, OM: @om.OM, sample_id: @om.sample_id, weight: @om.weight } }
    end

    assert_redirected_to om_url(Om.last)
  end

  test "should show om" do
    get om_url(@om)
    assert_response :success
  end

  test "should get edit" do
    get edit_om_url(@om)
    assert_response :success
  end

  test "should update om" do
    patch om_url(@om), params: { om: { FeSO4_1: @om.FeSO4_1, FeSO4_2: @om.FeSO4_2, FeSO4_3: @om.FeSO4_3, FeSO4_N2: @om.FeSO4_N2, K2CrO7_N1: @om.K2CrO7_N1, K2CrO7_V1: @om.K2CrO7_V1, OC: @om.OC, OM: @om.OM, sample_id: @om.sample_id, weight: @om.weight } }
    assert_redirected_to om_url(@om)
  end

  test "should destroy om" do
    assert_difference("Om.count", -1) do
      delete om_url(@om)
    end

    assert_redirected_to oms_url
  end
end
