require 'test_helper'

class OutputsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get outputs_new_url
    assert_response :success
  end

end
