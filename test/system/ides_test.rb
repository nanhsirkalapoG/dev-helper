require "application_system_test_case"

class IdesTest < ApplicationSystemTestCase
  setup do
    @ide = ides(:one)
  end

  test "visiting the index" do
    visit ides_url
    assert_selector "h1", text: "Ides"
  end

  test "creating a Ide" do
    visit ides_url
    click_on "New Ide"

    fill_in "Name", with: @ide.name
    fill_in "Notes", with: @ide.notes
    check "Open source" if @ide.open_source
    click_on "Create Ide"

    assert_text "Ide was successfully created"
    click_on "Back"
  end

  test "updating a Ide" do
    visit ides_url
    click_on "Edit", match: :first

    fill_in "Name", with: @ide.name
    fill_in "Notes", with: @ide.notes
    check "Open source" if @ide.open_source
    click_on "Update Ide"

    assert_text "Ide was successfully updated"
    click_on "Back"
  end

  test "destroying a Ide" do
    visit ides_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ide was successfully destroyed"
  end
end
