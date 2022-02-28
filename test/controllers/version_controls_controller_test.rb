require 'test_helper'

class VersionControlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @version_control = version_controls(:one)
  end

  test "should get index" do
    get version_controls_url
    assert_response :success
  end

  test "should get new" do
    get new_version_control_url
    assert_response :success
  end

  test "should create version_control" do
    assert_difference('VersionControl.count') do
      post version_controls_url, params: { version_control: { name: @version_control.name, notes: @version_control.notes, type: @version_control.type } }
    end

    assert_redirected_to version_control_url(VersionControl.last)
  end

  test "should show version_control" do
    get version_control_url(@version_control)
    assert_response :success
  end

  test "should get edit" do
    get edit_version_control_url(@version_control)
    assert_response :success
  end

  test "should update version_control" do
    patch version_control_url(@version_control), params: { version_control: { name: @version_control.name, notes: @version_control.notes, type: @version_control.type } }
    assert_redirected_to version_control_url(@version_control)
  end

  test "should destroy version_control" do
    assert_difference('VersionControl.count', -1) do
      delete version_control_url(@version_control)
    end

    assert_redirected_to version_controls_url
  end
end
