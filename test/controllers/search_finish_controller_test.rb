require "test_helper"

class SearchFinishControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get search_finish_edit_url
    assert_response :success
  end
end
