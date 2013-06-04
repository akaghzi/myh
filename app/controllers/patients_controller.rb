class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update]

  # GET /patients
  # GET /patients.json
  def index
    # added search patient option
    @patients = self.search(params[:search]) || Patient.all
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
    @contact_info = @patient.contact_info || @patient.create_contact_info
    @insurance_info = @patient.insurance_info || @patient.create_insurance_info
    @social_history = @patient.social_history || @patient.create_social_history
    @allergies = @patient.allergies 
    @current_medications = @patient.current_medications 
    @visits = @patient.visits    
    @vital_signs = VitalSign.where("visit_id in(?)", @patient.visit_ids)
    @lab_tests = VisitLabTestXref.where("visit_id in(?)", @patient.visit_ids)
  end

  # GET /patients/new
  def new
    @patient = Patient.new
  end

  # GET /patients/1/edit
  def edit
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.new(patient_params)

    respond_to do |format|
      if @patient.save
        format.html { redirect_to @patient, notice: 'Patient was successfully created.' }
        format.json { render action: 'show', status: :created, location: @patient }
      else
        format.html { render action: 'new' }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to @patient, notice: 'Patient was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end
  def search(search_string)
    @patients = Patient.where("last_name||' '||first_name||' '||middle_name like lower('%#{search_string}%')")
    # notice: "No patient found with that spelling try with alternate one" if @patients.blank?
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  # NO PATIENT ALLOWED TO BE DELETED FROM SYSTEM - ASIM KAGHZI
  # def destroy
  #   @patient.destroy
  #   respond_to do |format|
  #     format.html { redirect_to patients_url }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
      params.require(:patient).permit(:first_name, 
                                      :middle_name, 
                                      :last_name, 
                                      :date_of_birth, 
                                      :gender, 
                                      :phone,
                                      :externalid, 
                                      {:reg_answers_attributes => [:content,:patient_id, :reg_question_id]},
                                      {:visits_attributes => [:visit_date, :visit_reason, :lab_test_ids,:visit_note]}
                                      )
    end
end
