require "test_helper"

class WaldoLocationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get waldo_locations_index_url
    assert_response :success
  end

  test "should get create" do
    get waldo_locations_create_url
    assert_response :success
  end

  test "should get update" do
    get waldo_locations_update_url
    assert_response :success
  end

  test "should get destroy" do
    get waldo_locations_destroy_url
    assert_response :success
  end
end
