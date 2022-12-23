require "test_helper"

class ElementsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get elements_index_url
    assert_response :success
  end

  test "should get create" do
    get elements_create_url
    assert_response :success
  end

  test "should get update" do
    get elements_update_url
    assert_response :success
  end

  test "should get destroy" do
    get elements_destroy_url
    assert_response :success
  end
end
