require 'test_helper'

class ParentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get parents_index_url
    assert_response :success
  end

  test "should get show" do
    get parents_show_url
    assert_response :success
  end

  test "should get new" do
    get parents_new_url
    assert_response :success
  end

  test "should get create" do
    get parents_create_url
    assert_response :success
  end

  test "should get edit" do
    get parents_edit_url
    assert_response :success
  end

  test "should get update" do
    get parents_update_url
    assert_response :success
  end

  test "should get destroy" do
    get parents_destroy_url
    assert_response :success
  end

end
