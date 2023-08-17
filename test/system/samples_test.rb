require "application_system_test_case"

class SamplesTest < ApplicationSystemTestCase
  setup do
    @sample = samples(:one)
  end

  test "visiting the index" do
    visit samples_url
    assert_selector "h1", text: "Samples"
  end

  test "should create sample" do
    visit samples_url
    click_on "New sample"

    fill_in "Code", with: @sample.code
    fill_in "Detail", with: @sample.detail
    fill_in "Location", with: @sample.location
    fill_in "Ph 1", with: @sample.ph_1
    fill_in "Ph 2", with: @sample.ph_2
    fill_in "Ph 3", with: @sample.ph_3
    fill_in "Ph or", with: @sample.ph_OR
    fill_in "Ph weight", with: @sample.ph_Weight
    fill_in "Plant", with: @sample.plant
    click_on "Create Sample"

    assert_text "Sample was successfully created"
    click_on "Back"
  end

  test "should update Sample" do
    visit sample_url(@sample)
    click_on "Edit this sample", match: :first

    fill_in "Code", with: @sample.code
    fill_in "Detail", with: @sample.detail
    fill_in "Location", with: @sample.location
    fill_in "Ph 1", with: @sample.ph_1
    fill_in "Ph 2", with: @sample.ph_2
    fill_in "Ph 3", with: @sample.ph_3
    fill_in "Ph or", with: @sample.ph_OR
    fill_in "Ph weight", with: @sample.ph_Weight
    fill_in "Plant", with: @sample.plant
    click_on "Update Sample"

    assert_text "Sample was successfully updated"
    click_on "Back"
  end

  test "should destroy Sample" do
    visit sample_url(@sample)
    click_on "Destroy this sample", match: :first

    assert_text "Sample was successfully destroyed"
  end
end
