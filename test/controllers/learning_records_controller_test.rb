require "test_helper"

class LearningRecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get learning_records_show_url
    assert_response :success
  end
end
