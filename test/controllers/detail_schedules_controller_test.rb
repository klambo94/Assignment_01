require 'test_helper'

class DetailSchedulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detail_schedule = detail_schedules(:one)
  end

  test "should get index" do
    get detail_schedules_url
    assert_response :success
  end

  test "should get new" do
    get new_detail_schedule_url
    assert_response :success
  end

  test "should create detail_schedule" do
    assert_difference('DetailSchedule.count') do
      post detail_schedules_url, params: { course_id: courses(:ppl).id }
    end

    follow_redirect!
    assert_select 'h2', 'Your Detail Schedule'
    assert_select 'li', '32659'
  end

  test "should show detail_schedule" do
    get detail_schedule_url(@detail_schedule)
    assert_response :success
  end

  test "should get edit" do
    get edit_detail_schedule_url(@detail_schedule)
    assert_response :success
  end

  test "should update detail_schedule" do
    patch detail_schedule_url(@detail_schedule), params: { detail_schedule: {  } }
    assert_redirected_to detail_schedule_url(@detail_schedule)
  end

  test "should destroy detail_schedule" do
    assert_difference('DetailSchedule.count', -1) do
      delete detail_schedule_url(@detail_schedule)
    end

    assert_redirected_to detail_schedules_url
  end
end
