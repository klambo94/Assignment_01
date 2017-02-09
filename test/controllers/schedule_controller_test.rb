require 'test_helper'

class ScheduleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get schedule_index_url
    assert_response :success
    assert_select '#columns #side a', minimum: 3
    assert_select '#main .entry', 3
    assert_select 'h3', 'MyString'
  end

end
