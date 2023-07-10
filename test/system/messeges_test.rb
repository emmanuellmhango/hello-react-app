require "application_system_test_case"

class MessegesTest < ApplicationSystemTestCase
  setup do
    @messege = messeges(:one)
  end

  test "visiting the index" do
    visit messeges_url
    assert_selector "h1", text: "Messeges"
  end

  test "should create messege" do
    visit messeges_url
    click_on "New messege"

    fill_in "Message", with: @messege.message
    click_on "Create Messege"

    assert_text "Messege was successfully created"
    click_on "Back"
  end

  test "should update Messege" do
    visit messege_url(@messege)
    click_on "Edit this messege", match: :first

    fill_in "Message", with: @messege.message
    click_on "Update Messege"

    assert_text "Messege was successfully updated"
    click_on "Back"
  end

  test "should destroy Messege" do
    visit messege_url(@messege)
    click_on "Destroy this messege", match: :first

    assert_text "Messege was successfully destroyed"
  end
end
