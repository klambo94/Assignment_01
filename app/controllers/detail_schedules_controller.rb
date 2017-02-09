class DetailSchedulesController < ApplicationController
  before_action :set_detail_schedule, only: [:show, :edit, :update, :destroy]

  # GET /detail_schedules
  # GET /detail_schedules.json
  def index
    @detail_schedules = DetailSchedule.all
  end

  # GET /detail_schedules/1
  # GET /detail_schedules/1.json
  def show
  end

  # GET /detail_schedules/new
  def new
    @detail_schedule = DetailSchedule.new
  end

  # GET /detail_schedules/1/edit
  def edit
  end

  # POST /detail_schedules
  # POST /detail_schedules.json
  def create
    @detail_schedule = DetailSchedule.new(detail_schedule_params)

    respond_to do |format|
      if @detail_schedule.save
        format.html { redirect_to @detail_schedule, notice: 'Detail schedule was successfully created.' }
        format.json { render :show, status: :created, location: @detail_schedule }
      else
        format.html { render :new }
        format.json { render json: @detail_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detail_schedules/1
  # PATCH/PUT /detail_schedules/1.json
  def update
    respond_to do |format|
      if @detail_schedule.update(detail_schedule_params)
        format.html { redirect_to @detail_schedule, notice: 'Detail schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @detail_schedule }
      else
        format.html { render :edit }
        format.json { render json: @detail_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detail_schedules/1
  # DELETE /detail_schedules/1.json
  def destroy
    @detail_schedule.destroy
    respond_to do |format|
      format.html { redirect_to detail_schedules_url, notice: 'Detail schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private


    # Use callbacks to share common setup or constraints between actions.
    def set_detail_schedule
      @detail_schedule = DetailSchedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detail_schedule_params
      params.fetch(:detail_schedule, {})
    end
end
