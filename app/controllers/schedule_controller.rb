class ScheduleController < ApplicationController
  include CurrentDetailSchedule
  def index
    @courses = Course.order(:course_number)
  end
end
