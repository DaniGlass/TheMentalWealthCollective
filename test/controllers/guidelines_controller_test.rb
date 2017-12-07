require 'test_helper'

class GuidelinesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should get index" do
    sign_in User.create(:email => "#{rand(50000)}@example.com")
    get guidelines_url
    assert_response :success
  end
end
