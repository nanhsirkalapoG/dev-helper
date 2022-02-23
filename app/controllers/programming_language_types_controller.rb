class ProgrammingLanguageTypesController < ApplicationController
  before_action :set_programming_language_type, only: %i[ show edit update destroy ]

  # GET /programming_language_types or /programming_language_types.json
  def index
    @programming_language_types = ProgrammingLanguageType.all
  end

  # GET /programming_language_types/1 or /programming_language_types/1.json
  def show
  end

  # GET /programming_language_types/new
  def new
    @programming_language_type = ProgrammingLanguageType.new
  end

  # GET /programming_language_types/1/edit
  def edit
  end

  # POST /programming_language_types or /programming_language_types.json
  def create
    @programming_language_type = ProgrammingLanguageType.new(programming_language_type_params)

    respond_to do |format|
      if @programming_language_type.save
        format.html { redirect_to programming_language_type_url(@programming_language_type), notice: "Programming language type was successfully created." }
        format.json { render :show, status: :created, location: @programming_language_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @programming_language_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /programming_language_types/1 or /programming_language_types/1.json
  def update
    respond_to do |format|
      if @programming_language_type.update(programming_language_type_params)
        format.html { redirect_to programming_language_type_url(@programming_language_type), notice: "Programming language type was successfully updated." }
        format.json { render :show, status: :ok, location: @programming_language_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @programming_language_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programming_language_types/1 or /programming_language_types/1.json
  def destroy
    @programming_language_type.destroy

    respond_to do |format|
      format.html { redirect_to programming_language_types_url, notice: "Programming language type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programming_language_type
      @programming_language_type = ProgrammingLanguageType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def programming_language_type_params
      params.require(:programming_language_type).permit(:name, :description, :notes)
    end
end
