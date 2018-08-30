require 'test_helper'

class TeamMembersControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get team_members_login_url
    assert_response :success
  end

end
