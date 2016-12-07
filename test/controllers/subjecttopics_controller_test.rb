require 'test_helper'

class SubjecttopicsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get subjecttopics_index_url
    assert_response :success
  end

  test "should get new" do
    get subjecttopics_new_url
    assert_response :success
  end

  test "should get create" do
    get subjecttopics_create_url
    assert_response :success
  end

  test "should get edit" do
    get subjecttopics_edit_url
    assert_response :success
  end

  test "should get show" do
    get subjecttopics_show_url
    assert_response :success
  end

  test "should get update" do
    get subjecttopics_update_url
    assert_response :success
  end

  test "should get destroy" do
    get subjecttopics_destroy_url
    assert_response :success
  end

end
