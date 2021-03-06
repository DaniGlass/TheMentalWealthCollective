require 'test_helper'


class MissionControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should get index" do
    sign_in User.create(:email => "#{rand(50000)}@example.com")
    get mission_index_url
    assert_response :success
  end

end
