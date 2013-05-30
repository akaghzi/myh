class SurgeriesController < ApplicationController
  before_action :set_surgery, only: [:show, :edit, :update, :destroy]

  # GET /surgeries
  # GET /surgeries.json
  def index
    @surgeries = Surgery.all
  end

  # GET /surgeries/1
  # GET /surgeries/1.json
  def show
  end

  # GET /surgeries/new
  def new
    # find patient for the allergy
    @patient = Patient.find(params[:patient_id])
    # build the allergy for the patient
    @surgery = @patient.surgeries.build(patient_id: @patient.id)
    # @surgery = Surgery.new
  end

  # GET /surgeries/1/edit
  def edit
  end

  # POST /surgeries
  # POST /surgeries.json
  def create
    @surgery = Surgery.new(surgery_params)

    respond_to do |format|
      if @surgery.save
        format.html { redirect_to @surgery, notice: 'Surgery was successfully created.' }
        format.json { render action: 'show', status: :created, location: @surgery }
      else
        format.html { render action: 'new' }
        format.json { render json: @surgery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surgeries/1
  # PATCH/PUT /surgeries/1.json
  def update
    respond_to do |format|
      if @surgery.update(surgery_params)
        format.html { redirect_to @surgery, notice: 'Surgery was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @surgery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surgeries/1
  # DELETE /surgeries/1.json
  def destroy
    @surgery.destroy
    respond_to do |format|
      format.html { redirect_to surgeries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surgery
      @surgery = Surgery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def surgery_params
      params.require(:surgery).permit(:patient_id, :surgery_type, :surgery_date)
    end
end
