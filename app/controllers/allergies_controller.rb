class AllergiesController < ApplicationController
  before_action :set_allergy, only: [:show, :edit, :update, :destroy]

  # GET /allergies
  # GET /allergies.json
  def index
    @allergies = Allergy.all
  end

  # GET /allergies/1
  # GET /allergies/1.json
  def show
  end

  # GET /allergies/new
  def new
    # find patient for the allergy
    @patient = Patient.find(params[:patient_id])
    # build the allergy for the patient
    @allergy = @patient.allergies.build(patient_id: @patient.id)
    # @allergy = Allergy.new

  end

  # GET /allergies/1/edit
  def edit
  end

  # POST /allergies
  # POST /allergies.json
  def create
    @allergy = Allergy.new(allergy_params)

    respond_to do |format|
      if @allergy.save
        format.html { redirect_to patient_path(id: @allergy.patient_id), notice: 'Allergy was successfully created.' }
        format.json { render action: 'show', status: :created, location: @allergy }
      else
        format.html { render action: 'new' }
        format.json { render json: @allergy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /allergies/1
  # PATCH/PUT /allergies/1.json
  def update
    respond_to do |format|
      if @allergy.update(allergy_params)
        format.html { redirect_to patient_path(id: @allergy.patient_id), notice: 'Allergy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @allergy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /allergies/1
  # DELETE /allergies/1.json
  # def destroy
  #   @allergy.destroy
  #   respond_to do |format|
  #     format.html { redirect_to allergies_url }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_allergy
      @allergy = Allergy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def allergy_params
      params.require(:allergy).permit(:patient_id, :substance_name, :substance_type, :reaction)
    end
end
