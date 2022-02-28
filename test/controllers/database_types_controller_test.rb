require 'test_helper'

class DatabaseTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @database_type = database_types(:one)
  end

  test "should get index" do
    get database_types_url
    assert_response :success
  end

  test "should get new" do
    get new_database_type_url
    assert_response :success
  end

  test "should create database_type" do
    assert_difference('DatabaseType.count') do
      post database_types_url, params: { database_type: { name: @database_type.name, notes: @database_type.notes } }
    end

    assert_redirected_to database_type_url(DatabaseType.last)
  end

  test "should show database_type" do
    get database_type_url(@database_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_database_type_url(@database_type)
    assert_response :success
  end

  test "should update database_type" do
    patch database_type_url(@database_type), params: { database_type: { name: @database_type.name, notes: @database_type.notes } }
    assert_redirected_to database_type_url(@database_type)
  end

  test "should destroy database_type" do
    assert_difference('DatabaseType.count', -1) do
      delete database_type_url(@database_type)
    end

    assert_redirected_to database_types_url
  end
end
