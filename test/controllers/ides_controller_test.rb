require 'test_helper'

class IdesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ide = ides(:one)
  end

  test "should get index" do
    get ides_url
    assert_response :success
  end

  test "should get new" do
    get new_ide_url
    assert_response :success
  end

  test "should create ide" do
    assert_difference('Ide.count') do
      post ides_url, params: { ide: { name: @ide.name, notes: @ide.notes, open_source: @ide.open_source } }
    end

    assert_redirected_to ide_url(Ide.last)
  end

  test "should show ide" do
    get ide_url(@ide)
    assert_response :success
  end

  test "should get edit" do
    get edit_ide_url(@ide)
    assert_response :success
  end

  test "should update ide" do
    patch ide_url(@ide), params: { ide: { name: @ide.name, notes: @ide.notes, open_source: @ide.open_source } }
    assert_redirected_to ide_url(@ide)
  end

  test "should destroy ide" do
    assert_difference('Ide.count', -1) do
      delete ide_url(@ide)
    end

    assert_redirected_to ides_url
  end
end
