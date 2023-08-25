require "application_system_test_case"

class PhsTest < ApplicationSystemTestCase
  setup do
    @ph = phs(:one)
  end

  test "visiting the index" do
    visit phs_url
    assert_selector "h1", text: "Phs"
  end

  test "should create ph" do
    visit phs_url
    click_on "New ph"

    fill_in "Or", with: @ph.or
    fill_in "Ph1", with: @ph.ph1
    fill_in "Ph2", with: @ph.ph2
    fill_in "Ph3", with: @ph.ph3
    fill_in "Sample", with: @ph.sample_id
    fill_in "Weight", with: @ph.weight
    click_on "Create Ph"

    assert_text "Ph was successfully created"
    click_on "Back"
  end

  test "should update Ph" do
    visit ph_url(@ph)
    click_on "Edit this ph", match: :first

    fill_in "Or", with: @ph.or
    fill_in "Ph1", with: @ph.ph1
    fill_in "Ph2", with: @ph.ph2
    fill_in "Ph3", with: @ph.ph3
    fill_in "Sample", with: @ph.sample_id
    fill_in "Weight", with: @ph.weight
    click_on "Update Ph"

    assert_text "Ph was successfully updated"
    click_on "Back"
  end

  test "should destroy Ph" do
    visit ph_url(@ph)
    click_on "Destroy this ph", match: :first

    assert_text "Ph was successfully destroyed"
  end
end
