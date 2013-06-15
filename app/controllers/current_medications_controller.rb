class CurrentMedicationsController < ApplicationController
  before_action :set_current_medication, only: [:show, :edit, :update, :destroy]

  # GET /current_medications
  # GET /current_medications.json
  def index
    @current_medications = CurrentMedication.all
  end

  # GET /current_medications/1
  # GET /current_medications/1.json
  def show
  end

  # GET /current_medications/new
  def new
    # find patient for the current_medication
    @patient = Patient.find(params[:patient_id])
    # build the current_medication for the patient
    @current_medication = @patient.current_medications.build
    # @current_medication = CurrentMedication.new
  end

  # GET /current_medications/1/edit
  def edit
  end

  # POST /current_medications
  # POST /current_medications.json
  def create
    @current_medication = CurrentMedication.new(current_medication_params)

    respond_to do |format|
      if @current_medication.save
        format.html { redirect_to patient_path(id: @current_medication.patient_id), notice: 'Current medication was successfully created.' }
        format.json { render action: 'show', status: :created, location: @current_medication }
      else
        format.html { render action: 'new' }
        format.json { render json: @current_medication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /current_medications/1
  # PATCH/PUT /current_medications/1.json
  def update
    respond_to do |format|
      if @current_medication.update(current_medication_params)
        format.html { redirect_to patient_path(id: @current_medication.patient_id), notice: 'Current medication was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @current_medication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /current_medications/1
  # DELETE /current_medications/1.json
  # def destroy
  #   @current_medication.destroy
  #   respond_to do |format|
  #     format.html { redirect_to current_medications_url }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_current_medication
      @current_medication = CurrentMedication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def current_medication_params
      params.require(:current_medication).permit(:patient_id, :name, :dosage, :medication_frequency_id, :medication_route_id)
    end
end
