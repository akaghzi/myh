class ImmunizationsController < ApplicationController
  before_action :set_immunization, only: [:show, :edit, :update, :destroy]

  # GET /immunizations
  # GET /immunizations.json
  def index
    @immunizations = Immunization.all
  end

  # GET /immunizations/1
  # GET /immunizations/1.json
  def show
  end

  # GET /immunizations/new
  def new
    # find patient for the visit
    @patient = Patient.find(params[:patient_id])
    # build the immunization for the patient
    @immunization = @patient.immunizations.build
#    @immunization = Immunization.new
  end

  # GET /immunizations/1/edit
  def edit
  end

  # POST /immunizations
  # POST /immunizations.json
  def create
    @immunization = Immunization.new(immunization_params)

    respond_to do |format|
      if @immunization.save
        format.html { redirect_to @immunization, notice: 'Immunization was successfully created.' }
        format.json { render action: 'show', status: :created, location: @immunization }
      else
        format.html { render action: 'new' }
        format.json { render json: @immunization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /immunizations/1
  # PATCH/PUT /immunizations/1.json
  def update
    respond_to do |format|
      if @immunization.update(immunization_params)
        format.html { redirect_to @immunization, notice: 'Immunization was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @immunization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /immunizations/1
  # DELETE /immunizations/1.json
  # def destroy
  #   @immunization.destroy
  #   respond_to do |format|
  #     format.html { redirect_to immunizations_url }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_immunization
      @immunization = Immunization.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def immunization_params
      params.require(:immunization).permit(:patient_id, :vaccine_id, :immunization_year)
    end
end
