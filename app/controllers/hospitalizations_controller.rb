class HospitalizationsController < ApplicationController
  before_action :set_hospitalization, only: [:show, :edit, :update, :destroy]

  # GET /hospitalizations
  # GET /hospitalizations.json
  def index
    @hospitalizations = Hospitalization.all
  end

  # GET /hospitalizations/1
  # GET /hospitalizations/1.json
  def show
  end

  # GET /hospitalizations/new
  def new
    # find patient
    @patient = Patient.find(params[:patient_id])
    # build hospitalization for the patient
    @hospitalization = @patient.hospitalizations.build(patient_id: @patient.id)
    # @hospitalization = Hospitalization.new
  end

  # GET /hospitalizations/1/edit
  def edit
  end

  # POST /hospitalizations
  # POST /hospitalizations.json
  def create
    @hospitalization = Hospitalization.new(hospitalization_params)

    respond_to do |format|
      if @hospitalization.save
        format.html { redirect_to patient_path(id: @hospitalization.patient_id), notice: 'Hospitalization was successfully created.' }
        format.json { render action: 'show', status: :created, location: @hospitalization }
      else
        format.html { render action: 'new' }
        format.json { render json: @hospitalization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hospitalizations/1
  # PATCH/PUT /hospitalizations/1.json
  def update
    respond_to do |format|
      if @hospitalization.update(hospitalization_params)
        format.html { redirect_to patient_path(id: @hospitalization.patient_id), notice: 'Hospitalization was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @hospitalization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hospitalizations/1
  # DELETE /hospitalizations/1.json
  # def destroy
  #   @hospitalization.destroy
  #   respond_to do |format|
  #     format.html { redirect_to hospitalizations_url }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hospitalization
      @hospitalization = Hospitalization.find(params[:id])
      @patient = @hospitalization.patient
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hospitalization_params
      params.require(:hospitalization).permit(:patient_id, :hospitalization_reason, :hospitalization_date, :hospitalization_duration, :hospitalization_note)
    end
end
