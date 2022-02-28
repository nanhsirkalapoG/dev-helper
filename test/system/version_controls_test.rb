require "application_system_test_case"

class VersionControlsTest < ApplicationSystemTestCase
  setup do
    @version_control = version_controls(:one)
  end

  test "visiting the index" do
    visit version_controls_url
    assert_selector "h1", text: "Version Controls"
  end

  test "creating a Version control" do
    visit version_controls_url
    click_on "New Version Control"

    fill_in "Name", with: @version_control.name
    fill_in "Notes", with: @version_control.notes
    fill_in "Type", with: @version_control.type
    click_on "Create Version control"

    assert_text "Version control was successfully created"
    click_on "Back"
  end

  test "updating a Version control" do
    visit version_controls_url
    click_on "Edit", match: :first

    fill_in "Name", with: @version_control.name
    fill_in "Notes", with: @version_control.notes
    fill_in "Type", with: @version_control.type
    click_on "Update Version control"

    assert_text "Version control was successfully updated"
    click_on "Back"
  end

  test "destroying a Version control" do
    visit version_controls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Version control was successfully destroyed"
  end
end
