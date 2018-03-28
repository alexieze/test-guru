require 'test_helper'

class TestsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get tests_create_url
    assert_response :success
  end

  test "should get edit" do
    get tests_edit_url
    assert_response :success
  end

  test "should get show" do
    get tests_show_url
    assert_response :success
  end

  test "should get new" do
    get tests_new_url
    assert_response :success
  end

  test "should get update" do
    get tests_update_url
    assert_response :success
  end

  test "should get destroy" do
    get tests_destroy_url
    assert_response :success
  end

end
