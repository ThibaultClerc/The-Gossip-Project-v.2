require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get welcoming" do
    get home_welcoming_url
    assert_response :success
  end

end
