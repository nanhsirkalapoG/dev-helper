class DatabaseTypesController < ApplicationController
  before_action :set_database_type, only: %i[ show edit update destroy ]

  # GET /database_types or /database_types.json
  def index
    @database_types = DatabaseType.all
  end

  # GET /database_types/1 or /database_types/1.json
  def show
  end

  # GET /database_types/new
  def new
    @database_type = DatabaseType.new
  end

  # GET /database_types/1/edit
  def edit
  end

  # POST /database_types or /database_types.json
  def create
    @database_type = DatabaseType.new(database_type_params)

    respond_to do |format|
      if @database_type.save
        format.html { redirect_to database_type_url(@database_type), notice: "Database type was successfully created." }
        format.json { render :show, status: :created, location: @database_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @database_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /database_types/1 or /database_types/1.json
  def update
    respond_to do |format|
      if @database_type.update(database_type_params)
        format.html { redirect_to database_type_url(@database_type), notice: "Database type was successfully updated." }
        format.json { render :show, status: :ok, location: @database_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @database_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /database_types/1 or /database_types/1.json
  def destroy
    @database_type.destroy

    respond_to do |format|
      format.html { redirect_to database_types_url, notice: "Database type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_database_type
      @database_type = DatabaseType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def database_type_params
      params.require(:database_type).permit(:name, :notes)
    end
end
