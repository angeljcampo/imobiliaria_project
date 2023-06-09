require "test_helper"

class LeadsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get leads_index_url
    assert_response :success
  end

  test "should get new" do
    get leads_new_url
    assert_response :success
  end

  test "should get create" do
    get leads_create_url
    assert_response :success
  end

  test "should get show" do
    get leads_show_url
    assert_response :success
  end

  test "should get edit" do
    get leads_edit_url
    assert_response :success
  end

  test "should get update" do
    get leads_update_url
    assert_response :success
  end

  test "should get delete" do
    get leads_delete_url
    assert_response :success
  end
end
