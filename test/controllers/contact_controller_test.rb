require 'test_helper'

class ContactControllerTest < ActionDispatch::IntegrationTest
  test "should get show_contacts" do
    get contact_show_contacts_url
    assert_response :success
  end

end
