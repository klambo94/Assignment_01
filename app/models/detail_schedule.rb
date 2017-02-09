class DetailSchedule < ApplicationRecord
  has_many :schedule_line_items, dependent: :destroy

  def add_course(course)
    current_item = schedule_line_items.find_by(course_id: course.id)
    if current_item.nil?
      current_item = schedule_line_items.build(course_id: course.id)
    end
    current_item
  end
end
