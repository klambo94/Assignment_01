require 'test_helper'

class ScheduleLineItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @schedule_line_item = schedule_line_items(:one)
  end

  test "should get index" do
    get schedule_line_items_url
    assert_response :success
  end

  test "should get new" do
    get new_schedule_line_item_url
    assert_response :success
  end

  test "should create schedule_line_item" do
    assert_difference('ScheduleLineItem.count') do
      post schedule_line_items_url, params: { course_id: courses(:ppl).id }
    end
    follow_redirect!
    assert_select 'h2', 'Your Detail Schedule'
    assert_select 'li', '32659, Principles of Programming Languages,
      Schultz, TR,
      2000-01-01 11:15:49 UTC, 1009'
  end

  test "should show schedule_line_item" do
    get schedule_line_item_url(@schedule_line_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_schedule_line_item_url(@schedule_line_item)
    assert_response :success
  end

  test "should update schedule_line_item" do
    patch schedule_line_item_url(@schedule_line_item), params: { schedule_line_item: { course_id: @schedule_line_item.course_id } }
    assert_redirected_to schedule_line_item_url(@schedule_line_item)
  end

  test "should destroy schedule_line_item" do
    assert_difference('ScheduleLineItem.count', -1) do
      delete schedule_line_item_url(@schedule_line_item)
    end

    assert_redirected_to schedule_line_items_url
  end
end
