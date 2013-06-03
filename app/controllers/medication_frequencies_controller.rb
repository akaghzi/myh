class MedicationFrequenciesController < ApplicationController
  before_action :set_medication_frequency, only: [:show, :edit, :update, :destroy]

  # GET /medication_frequencies
  # GET /medication_frequencies.json
  def index
    @medication_frequencies = MedicationFrequency.all
  end

  # GET /medication_frequencies/1
  # GET /medication_frequencies/1.json
  def show
  end

  # GET /medication_frequencies/new
  def new
    @medication_frequency = MedicationFrequency.new
  end

  # GET /medication_frequencies/1/edit
  def edit
  end

  # POST /medication_frequencies
  # POST /medication_frequencies.json
  def create
    @medication_frequency = MedicationFrequency.new(medication_frequency_params)

    respond_to do |format|
      if @medication_frequency.save
        format.html { redirect_to @medication_frequency, notice: 'Medication frequency was successfully created.' }
        format.json { render action: 'show', status: :created, location: @medication_frequency }
      else
        format.html { render action: 'new' }
        format.json { render json: @medication_frequency.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medication_frequencies/1
  # PATCH/PUT /medication_frequencies/1.json
  def update
    respond_to do |format|
      if @medication_frequency.update(medication_frequency_params)
        format.html { redirect_to @medication_frequency, notice: 'Medication frequency was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @medication_frequency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medication_frequencies/1
  # DELETE /medication_frequencies/1.json
  def destroy
    @medication_frequency.destroy
    respond_to do |format|
      format.html { redirect_to medication_frequencies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medication_frequency
      @medication_frequency = MedicationFrequency.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medication_frequency_params
      params.require(:medication_frequency).permit(:name)
    end
end
