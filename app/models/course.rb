class Course < ApplicationRecord
  has_many :schedule_line_items

  before_destroy :ensure_not_referenced_by_any_schedule_line_item
  validates :course_number, :course_name, :course_description, :course_week_date, :course_time, :course_room_number,
            :professor, presence: true
  validates :course_number, :course_room_number, numericality: {greater_than: 0 }
  validates :course_name, uniqueness: true

  private
  def ensure_not_referenced_by_any_schedule_line_item
    unless schedule_line_items.empty?
      errors.add(:base, 'Schedule line items present')
      throw :abort
    end
  end
end
