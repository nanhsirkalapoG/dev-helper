require "application_system_test_case"

class ToolTypesTest < ApplicationSystemTestCase
  setup do
    @tool_type = tool_types(:one)
  end

  test "visiting the index" do
    visit tool_types_url
    assert_selector "h1", text: "Tool Types"
  end

  test "creating a Tool type" do
    visit tool_types_url
    click_on "New Tool Type"

    fill_in "Description", with: @tool_type.description
    fill_in "Name", with: @tool_type.name
    fill_in "Notes", with: @tool_type.notes
    click_on "Create Tool type"

    assert_text "Tool type was successfully created"
    click_on "Back"
  end

  test "updating a Tool type" do
    visit tool_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @tool_type.description
    fill_in "Name", with: @tool_type.name
    fill_in "Notes", with: @tool_type.notes
    click_on "Update Tool type"

    assert_text "Tool type was successfully updated"
    click_on "Back"
  end

  test "destroying a Tool type" do
    visit tool_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tool type was successfully destroyed"
  end
end
