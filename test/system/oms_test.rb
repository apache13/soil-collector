require "application_system_test_case"

class OmsTest < ApplicationSystemTestCase
  setup do
    @om = oms(:one)
  end

  test "visiting the index" do
    visit oms_url
    assert_selector "h1", text: "Oms"
  end

  test "should create om" do
    visit oms_url
    click_on "New om"

    fill_in "Feso4 1", with: @om.FeSO4_1
    fill_in "Feso4 2", with: @om.FeSO4_2
    fill_in "Feso4 3", with: @om.FeSO4_3
    fill_in "Feso4 n2", with: @om.FeSO4_N2
    fill_in "K2cro7 n1", with: @om.K2CrO7_N1
    fill_in "K2cro7 v1", with: @om.K2CrO7_V1
    fill_in "Oc", with: @om.OC
    fill_in "Om", with: @om.OM
    fill_in "Sample", with: @om.sample_id
    fill_in "Weight", with: @om.weight
    click_on "Create Om"

    assert_text "Om was successfully created"
    click_on "Back"
  end

  test "should update Om" do
    visit om_url(@om)
    click_on "Edit this om", match: :first

    fill_in "Feso4 1", with: @om.FeSO4_1
    fill_in "Feso4 2", with: @om.FeSO4_2
    fill_in "Feso4 3", with: @om.FeSO4_3
    fill_in "Feso4 n2", with: @om.FeSO4_N2
    fill_in "K2cro7 n1", with: @om.K2CrO7_N1
    fill_in "K2cro7 v1", with: @om.K2CrO7_V1
    fill_in "Oc", with: @om.OC
    fill_in "Om", with: @om.OM
    fill_in "Sample", with: @om.sample_id
    fill_in "Weight", with: @om.weight
    click_on "Update Om"

    assert_text "Om was successfully updated"
    click_on "Back"
  end

  test "should destroy Om" do
    visit om_url(@om)
    click_on "Destroy this om", match: :first

    assert_text "Om was successfully destroyed"
  end
end
