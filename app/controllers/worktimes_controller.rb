class WorktimesController < ApplicationController
  before_action :set_worktime, only: %i[ show edit update destroy ]

  # GET /worktimes or /worktimes.json
  def index
    @worktimes = Worktime.all
  end

  # GET /worktimes/1 or /worktimes/1.json
  def show
  end

  # GET /worktimes/new
  def new
    @user = current_user
    @weektime = Weektime.find(params[:weektime_id])
    @worktime = @weektime.worktimes.build
    @worktime.weektime_id = Weektime.find(params[:weektime_id])

  end

  # GET /worktimes/1/edit
  def edit
  end

  # POST /worktimes or /worktimes.json
  def create
    @user = current_user
    @weektime = Weektime.find(params[:weektime_id])
  @worktime = @weektime.worktimes.build(worktime_params)
  @worktime.weektime_id = params[:weektime_id]
  @worktime.accord = (@worktime.endtime - @worktime.gotime) 
  
  
  
  if @worktime.gotime < @worktime.endtime

    respond_to do |format|
      if @worktime.save
        format.html { redirect_to weektime_url(@weektime) , notice: "Worktime was successfully created." }
        #format.json { render :show, status: :created, location: @weektime }
      else
        format.html { render :new, status: :unprocessable_entity }
        #format.json { render json: @worktime.errors, status: :unprocessable_entity }
      end
    end
  end
end

  # PATCH/PUT /worktimes/1 or /worktimes/1.json
  def update
    respond_to do |format|
      if @worktime.update(worktime_params)
        format.html { redirect_to worktime_url(@worktime), notice: "Worktime was successfully updated." }
        format.json { render :show, status: :ok, location: @worktime }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @worktime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /worktimes/1 or /worktimes/1.json
  def destroy
    @worktime.destroy

    respond_to do |format|
      format.html { redirect_to worktimes_url, notice: "Worktime was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_worktime
      @worktime = Worktime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def worktime_params
      params.require(:worktime).permit(:weektime_id, :gotime, :endtime, :accord)
    end
end
