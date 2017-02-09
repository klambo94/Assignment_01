class ScheduleLineItemsController < ApplicationController
  include CurrentDetailSchedule
  before_action :set_detail_schedule, only: [:create]
  before_action :set_schedule_line_item, only: [:show, :edit, :update, :destroy]

  # GET /schedule_line_items
  # GET /schedule_line_items.json
  def index
    @schedule_line_items = ScheduleLineItem.all
  end

  # GET /schedule_line_items/1
  # GET /schedule_line_items/1.json
  def show
  end

  # GET /schedule_line_items/new
  def new
    @schedule_line_item = ScheduleLineItem.new
  end

  # GET /schedule_line_items/1/edit
  def edit
  end

  # POST /schedule_line_items
  # POST /schedule_line_items.json
  def create
    course = Course.find(params[:course_id])

    @schedule_line_item = @detail_schedule.add_course(course)
    respond_to do |format|
      if @schedule_line_item.save
        format.html { redirect_to @schedule_line_item.detail_schedule, notice: 'Schedule line item was successfully created.' }
        format.json { render :show, status: :created, location: @schedule_line_item }
      else
        format.html { render :new }
        format.json { render json: @schedule_line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schedule_line_items/1
  # PATCH/PUT /schedule_line_items/1.json
  def update
    respond_to do |format|
      if @schedule_line_item.update(schedule_line_item_params)
        format.html { redirect_to @schedule_line_item, notice: 'Schedule line item was successfully updated.' }
        format.json { render :show, status: :ok, location: @schedule_line_item }
      else
        format.html { render :edit }
        format.json { render json: @schedule_line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedule_line_items/1
  # DELETE /schedule_line_items/1.json
  def destroy
    @schedule_line_item.destroy
    respond_to do |format|
      format.html { redirect_to schedule_line_items_url, notice: 'Schedule line item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule_line_item
      @schedule_line_item = ScheduleLineItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schedule_line_item_params
      params.require(:schedule_line_item).permit(:course_id)
    end
end
