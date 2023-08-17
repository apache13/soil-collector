require "test_helper"

class SamplesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sample = samples(:one)
  end

  test "should get index" do
    get samples_url
    assert_response :success
  end

  test "should get new" do
    get new_sample_url
    assert_response :success
  end

  test "should create sample" do
    assert_difference("Sample.count") do
      post samples_url, params: { sample: { code: @sample.code, detail: @sample.detail, location: @sample.location, ph_1: @sample.ph_1, ph_2: @sample.ph_2, ph_3: @sample.ph_3, ph_OR: @sample.ph_OR, ph_Weight: @sample.ph_Weight, plant: @sample.plant } }
    end

    assert_redirected_to sample_url(Sample.last)
  end

  test "should show sample" do
    get sample_url(@sample)
    assert_response :success
  end

  test "should get edit" do
    get edit_sample_url(@sample)
    assert_response :success
  end

  test "should update sample" do
    patch sample_url(@sample), params: { sample: { code: @sample.code, detail: @sample.detail, location: @sample.location, ph_1: @sample.ph_1, ph_2: @sample.ph_2, ph_3: @sample.ph_3, ph_OR: @sample.ph_OR, ph_Weight: @sample.ph_Weight, plant: @sample.plant } }
    assert_redirected_to sample_url(@sample)
  end

  test "should destroy sample" do
    assert_difference("Sample.count", -1) do
      delete sample_url(@sample)
    end

    assert_redirected_to samples_url
  end
end
