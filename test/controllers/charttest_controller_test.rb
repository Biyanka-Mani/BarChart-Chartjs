require "test_helper"

class CharttestControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get charttest_index_url
    assert_response :success
  end
end
