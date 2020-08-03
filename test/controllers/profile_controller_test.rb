require 'test_helper'

class ProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get user_description" do
    get profile_user_description_url
    assert_response :success
  end

end
