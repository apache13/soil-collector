require "application_system_test_case"

class LimesTest < ApplicationSystemTestCase
  setup do
    @lime = limes(:one)
  end

  test "visiting the index" do
    visit limes_url
    assert_selector "h1", text: "Limes"
  end

  test "should create lime" do
    visit limes_url
    click_on "New lime"

    fill_in "Ph1", with: @lime.ph1
    fill_in "Ph2", with: @lime.ph2
    fill_in "Ph3", with: @lime.ph3
    fill_in "Sample", with: @lime.sample_id
    fill_in "Weight", with: @lime.weight
    fill_in "Woodruff", with: @lime.woodruff
    click_on "Create Lime"

    assert_text "Lime was successfully created"
    click_on "Back"
  end

  test "should update Lime" do
    visit lime_url(@lime)
    click_on "Edit this lime", match: :first

    fill_in "Ph1", with: @lime.ph1
    fill_in "Ph2", with: @lime.ph2
    fill_in "Ph3", with: @lime.ph3
    fill_in "Sample", with: @lime.sample_id
    fill_in "Weight", with: @lime.weight
    fill_in "Woodruff", with: @lime.woodruff
    click_on "Update Lime"

    assert_text "Lime was successfully updated"
    click_on "Back"
  end

  test "should destroy Lime" do
    visit lime_url(@lime)
    click_on "Destroy this lime", match: :first

    assert_text "Lime was successfully destroyed"
  end
end
