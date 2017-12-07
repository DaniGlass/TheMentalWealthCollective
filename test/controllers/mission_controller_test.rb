require 'test_helper'

class MissionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mission_index_url
    assert_response :success
  end

end
