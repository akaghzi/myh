class MedTestTypesController < ApplicationController
  before_action :set_med_test_type, only: [:show, :edit, :update, :destroy]

  # GET /med_test_types
  # GET /med_test_types.json
  def index
    @med_test_types = MedTestType.all.sort
  end

  # GET /med_test_types/1
  # GET /med_test_types/1.json
  def show
  end

  # GET /med_test_types/new
  def new
    @med_test_type = MedTestType.new
  end

  # GET /med_test_types/1/edit
  def edit
  end

  # POST /med_test_types
  # POST /med_test_types.json
  def create
    @med_test_type = MedTestType.new(med_test_type_params)

    respond_to do |format|
      if @med_test_type.save
        format.html { redirect_to @med_test_type, notice: 'Med test type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @med_test_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @med_test_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /med_test_types/1
  # PATCH/PUT /med_test_types/1.json
  def update
    respond_to do |format|
      if @med_test_type.update(med_test_type_params)
        format.html { redirect_to @med_test_type, notice: 'Med test type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @med_test_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /med_test_types/1
  # DELETE /med_test_types/1.json
  # def destroy
#     @med_test_type.destroy
#     respond_to do |format|
#       format.html { redirect_to med_test_types_url }
#       format.json { head :no_content }
#     end
#   end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_med_test_type
      @med_test_type = MedTestType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def med_test_type_params
      params.require(:med_test_type).permit(:full_name, :short_name, :unit_of_measure, :lab_type, 
                                            :essential, :minimum_threshold, :maximum_threshold,
                                            :minimum_age)
    end
end
