require "test_helper"

class SearchValuesControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get search_values_edit_url
    assert_response :success
  end
end
