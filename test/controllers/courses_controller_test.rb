require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course = courses(:one)
    @update = {
        course_number: 2,
        course_name: 'Sound Garden',
        course_description: 'Lorem Ipsum',
        course_week_date: 'TR',
        course_time: '12:00',
        course_room_number: 10,
        professor: 'Lerry Renoylds'
    }
  end

  test "should get index" do
    get courses_url
    assert_response :success
  end

  test "should get new" do
    get new_course_url
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post courses_url, params: { course: @update}
    end

    assert_redirected_to course_url(Course.last)
  end

  test "should show course" do
    get course_url(@course)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_url(@course)
    assert_response :success
  end

  test "should update course" do
    patch course_url(@course), params: { course: @update }
    assert_redirected_to course_url(@course)
  end

  test "can't delete course in detail schedule" do
    assert_difference('Course.count', 0) do
      delete course_url(courses(:two))
    end
    assert_redirected_to course_url
  end
  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete course_url(@course)
    end

    assert_redirected_to courses_url
  end
end
