class VersionControlsController < ApplicationController
  before_action :set_version_control, only: %i[ show edit update destroy ]

  # GET /version_controls or /version_controls.json
  def index
    @version_controls = VersionControl.all
  end

  # GET /version_controls/1 or /version_controls/1.json
  def show
  end

  # GET /version_controls/new
  def new
    @version_control = VersionControl.new
  end

  # GET /version_controls/1/edit
  def edit
  end

  # POST /version_controls or /version_controls.json
  def create
    @version_control = VersionControl.new(version_control_params)

    respond_to do |format|
      if @version_control.save
        format.html { redirect_to version_control_url(@version_control), notice: "Version control was successfully created." }
        format.json { render :show, status: :created, location: @version_control }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @version_control.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /version_controls/1 or /version_controls/1.json
  def update
    respond_to do |format|
      if @version_control.update(version_control_params)
        format.html { redirect_to version_control_url(@version_control), notice: "Version control was successfully updated." }
        format.json { render :show, status: :ok, location: @version_control }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @version_control.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /version_controls/1 or /version_controls/1.json
  def destroy
    @version_control.destroy

    respond_to do |format|
      format.html { redirect_to version_controls_url, notice: "Version control was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_version_control
      @version_control = VersionControl.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def version_control_params
      params.require(:version_control).permit(:name, :vcs_type, :notes)
    end
end
