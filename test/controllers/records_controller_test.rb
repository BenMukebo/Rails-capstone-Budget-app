require "test_helper"

class RecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get records_new_url
    assert_response :success
  end

  test "should get create" do
    get records_create_url
    assert_response :success
  end

  test "should get update" do
    get records_update_url
    assert_response :success
  end

  test "should get destroy" do
    get records_destroy_url
    assert_response :success
  end
end
