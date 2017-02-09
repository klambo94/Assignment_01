require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  test "course attributes must not be empty" do
    course = Course.new
    assert course.invalid?
    assert course.errors[:course_number].any?
    assert course.errors[:course_name].any?
    assert course.errors[:course_description].any?
    assert course.errors[:course_week_date].any?
    assert course.errors[:course_time].any?
    assert course.errors[:course_room_number].any?
    assert course.errors[:professor].any?
  end

  test "room numbers must be greater than zero" do
    course = Course.new(course_number: 2,
                        course_name: 'Sound Garden',
                        course_description: 'Lorem Ipsum',
                        course_week_date: 'TR',
                        course_time: '12:00',
                        professor: 'Lerry Renoylds')
    course.course_room_number = 0
    assert course.invalid?
    assert_equal ["must be greater than 0"], course.errors[:course_room_number].any?

    course.course_room_number = 1
    assert course.valid?
  end

  test "course numbers must be greater than zero" do
    course = Course.new(course_name: 'Sound Garden',
                        course_description: 'Lorem Ipsum',
                        course_week_date: 'TR',
                        course_time: '12:00',
                        course_room_number: 0,
                        professor: 'Lerry Renoylds')
    course.course_number = 0
    assert course.invalid?
    assert_equal ["must be greater than 0"], course.errors[:course_number].any?

    course.course_number = 1
    assert course.valid?
  end
end