require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get mypage" do
    get static_pages_mypage_url
    assert_response :success
  end

  test "should get registration_complete" do
    get static_pages_registration_complete_url
    assert_response :success
  end
end
