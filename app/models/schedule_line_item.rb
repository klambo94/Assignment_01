class ScheduleLineItem < ApplicationRecord
  belongs_to :course
  belongs_to :detail_schedule
end
