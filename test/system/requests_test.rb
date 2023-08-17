require "application_system_test_case"

class RequestsTest < ApplicationSystemTestCase
  setup do
    @request = requests(:one)
  end

  test "visiting the index" do
    visit requests_url
    assert_selector "h1", text: "Requests"
  end

  test "should create request" do
    visit requests_url
    click_on "New request"

    fill_in "Channel", with: @request.channel
    check "K" if @request.k
    check "Lime" if @request.lime
    check "Om" if @request.om
    check "P" if @request.p
    check "Ph" if @request.ph
    fill_in "Receive", with: @request.receive
    fill_in "Remark", with: @request.remark
    click_on "Create Request"

    assert_text "Request was successfully created"
    click_on "Back"
  end

  test "should update Request" do
    visit request_url(@request)
    click_on "Edit this request", match: :first

    fill_in "Channel", with: @request.channel
    check "K" if @request.k
    check "Lime" if @request.lime
    check "Om" if @request.om
    check "P" if @request.p
    check "Ph" if @request.ph
    fill_in "Receive", with: @request.receive
    fill_in "Remark", with: @request.remark
    click_on "Update Request"

    assert_text "Request was successfully updated"
    click_on "Back"
  end

  test "should destroy Request" do
    visit request_url(@request)
    click_on "Destroy this request", match: :first

    assert_text "Request was successfully destroyed"
  end
end
