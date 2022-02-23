require 'test_helper'

class ProgrammingLanguageTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @programming_language_type = programming_language_types(:one)
  end

  test "should get index" do
    get programming_language_types_url
    assert_response :success
  end

  test "should get new" do
    get new_programming_language_type_url
    assert_response :success
  end

  test "should create programming_language_type" do
    assert_difference('ProgrammingLanguageType.count') do
      post programming_language_types_url, params: { programming_language_type: { description: @programming_language_type.description, name: @programming_language_type.name, notes: @programming_language_type.notes } }
    end

    assert_redirected_to programming_language_type_url(ProgrammingLanguageType.last)
  end

  test "should show programming_language_type" do
    get programming_language_type_url(@programming_language_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_programming_language_type_url(@programming_language_type)
    assert_response :success
  end

  test "should update programming_language_type" do
    patch programming_language_type_url(@programming_language_type), params: { programming_language_type: { description: @programming_language_type.description, name: @programming_language_type.name, notes: @programming_language_type.notes } }
    assert_redirected_to programming_language_type_url(@programming_language_type)
  end

  test "should destroy programming_language_type" do
    assert_difference('ProgrammingLanguageType.count', -1) do
      delete programming_language_type_url(@programming_language_type)
    end

    assert_redirected_to programming_language_types_url
  end
end
