class GynecologyHistoriesController < ApplicationController
  before_action :set_gynecology_history, only: [:show, :edit, :update, :destroy]

  # GET /gynecology_histories
  # GET /gynecology_histories.json
  def index
    @gynecology_histories = GynecologyHistory.all
  end

  # GET /gynecology_histories/1
  # GET /gynecology_histories/1.json
  def show
  end

  # GET /gynecology_histories/new
  def new
    @patient = Patient.find(params[:patient_id])
    @gynecology_history = @patient.gynecology_histories.build
    # @gynecology_history = GynecologyHistory.new
  end

  # GET /gynecology_histories/1/edit
  def edit
  end

  # POST /gynecology_histories
  # POST /gynecology_histories.json
  def create
    @gynecology_history = GynecologyHistory.new(gynecology_history_params)

    respond_to do |format|
      if @gynecology_history.save
        format.html { redirect_to patient_path(id: @gynecology_history.patient_id), notice: 'Gynecology history was successfully created.' }
        format.json { render action: 'show', status: :created, location: @gynecology_history }
      else
        format.html { render action: 'new' }
        format.json { render json: @gynecology_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gynecology_histories/1
  # PATCH/PUT /gynecology_histories/1.json
  def update
    respond_to do |format|
      if @gynecology_history.update(gynecology_history_params)
        format.html { redirect_to patient_path(id: @gynecology_history.patient_id), notice: 'Gynecology history was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @gynecology_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gynecology_histories/1
  # DELETE /gynecology_histories/1.json
  # def destroy
  #   @gynecology_history.destroy
  #   respond_to do |format|
  #     format.html { redirect_to gynecology_histories_url }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gynecology_history
      @gynecology_history = GynecologyHistory.find(params[:id])
      @patient = @gynecology_history.patient
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gynecology_history_params
      params.require(:gynecology_history).permit(:patient_id, :gynecology_problem_id, :problem_date, :followup)
    end
end
