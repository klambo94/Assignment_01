module CurrentDetailSchedule
  private
  def  set_detail_schedule
    @detail_schedule = DetailSchedule.find(session[:university_id])
  rescue ActiveRecord::RecordNotFound
    @detail_schedule = DetailSchedule.create
    session[:university_id] = @detail_schedule.id
  end
end