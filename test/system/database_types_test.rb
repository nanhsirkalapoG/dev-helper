require "application_system_test_case"

class DatabaseTypesTest < ApplicationSystemTestCase
  setup do
    @database_type = database_types(:one)
  end

  test "visiting the index" do
    visit database_types_url
    assert_selector "h1", text: "Database Types"
  end

  test "creating a Database type" do
    visit database_types_url
    click_on "New Database Type"

    fill_in "Name", with: @database_type.name
    fill_in "Notes", with: @database_type.notes
    click_on "Create Database type"

    assert_text "Database type was successfully created"
    click_on "Back"
  end

  test "updating a Database type" do
    visit database_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @database_type.name
    fill_in "Notes", with: @database_type.notes
    click_on "Update Database type"

    assert_text "Database type was successfully updated"
    click_on "Back"
  end

  test "destroying a Database type" do
    visit database_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Database type was successfully destroyed"
  end
end
