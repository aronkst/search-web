require 'test_helper'

class RunControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get run_index_url(searches(:one))
    assert_response :success
  end

  test 'should get show' do
    get run_show_url(searches(:one), runs(:one))
    assert_response :success
  end
end
