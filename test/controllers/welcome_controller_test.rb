require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome_message" do
    get welcome_welcome_message_url
    assert_response :success
  end

end
