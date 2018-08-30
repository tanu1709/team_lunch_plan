require 'test_helper'

class ManagersControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get managers_login_url
    assert_response :success
  end

end
