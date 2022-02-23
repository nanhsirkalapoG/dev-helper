require "application_system_test_case"

class ProgrammingLanguageTypesTest < ApplicationSystemTestCase
  setup do
    @programming_language_type = programming_language_types(:one)
  end

  test "visiting the index" do
    visit programming_language_types_url
    assert_selector "h1", text: "Programming Language Types"
  end

  test "creating a Programming language type" do
    visit programming_language_types_url
    click_on "New Programming Language Type"

    fill_in "Description", with: @programming_language_type.description
    fill_in "Name", with: @programming_language_type.name
    fill_in "Notes", with: @programming_language_type.notes
    click_on "Create Programming language type"

    assert_text "Programming language type was successfully created"
    click_on "Back"
  end

  test "updating a Programming language type" do
    visit programming_language_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @programming_language_type.description
    fill_in "Name", with: @programming_language_type.name
    fill_in "Notes", with: @programming_language_type.notes
    click_on "Update Programming language type"

    assert_text "Programming language type was successfully updated"
    click_on "Back"
  end

  test "destroying a Programming language type" do
    visit programming_language_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Programming language type was successfully destroyed"
  end
end
