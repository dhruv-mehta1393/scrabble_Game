require "test_helper"

class LeaderBordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get leader_bords_index_url
    assert_response :success
  end
end
