require "test_helper"

class PhsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ph = phs(:one)
  end

  test "should get index" do
    get phs_url
    assert_response :success
  end

  test "should get new" do
    get new_ph_url
    assert_response :success
  end

  test "should create ph" do
    assert_difference("Ph.count") do
      post phs_url, params: { ph: { or: @ph.or, ph1: @ph.ph1, ph2: @ph.ph2, ph3: @ph.ph3, sample_id: @ph.sample_id, weight: @ph.weight } }
    end

    assert_redirected_to ph_url(Ph.last)
  end

  test "should show ph" do
    get ph_url(@ph)
    assert_response :success
  end

  test "should get edit" do
    get edit_ph_url(@ph)
    assert_response :success
  end

  test "should update ph" do
    patch ph_url(@ph), params: { ph: { or: @ph.or, ph1: @ph.ph1, ph2: @ph.ph2, ph3: @ph.ph3, sample_id: @ph.sample_id, weight: @ph.weight } }
    assert_redirected_to ph_url(@ph)
  end

  test "should destroy ph" do
    assert_difference("Ph.count", -1) do
      delete ph_url(@ph)
    end

    assert_redirected_to phs_url
  end
end
