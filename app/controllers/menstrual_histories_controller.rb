class MenstrualHistoriesController < ApplicationController
  before_action :set_menstrual_history, only: [:show, :edit, :update, :destroy]

  # GET /menstrual_histories
  # GET /menstrual_histories.json
  def index
    @menstrual_histories = MenstrualHistory.all
  end

  # GET /menstrual_histories/1
  # GET /menstrual_histories/1.json
  def show
  end

  # GET /menstrual_histories/new
  def new
    @patient = Patient.find(params[:patient_id])
    @menstrual_history = @patient.menstrual_histories.build
    # @menstrual_history = MenstrualHistory.new
  end

  # GET /menstrual_histories/1/edit
  def edit
  end

  # POST /menstrual_histories
  # POST /menstrual_histories.json
  def create
    @menstrual_history = MenstrualHistory.new(menstrual_history_params)

    respond_to do |format|
      if @menstrual_history.save
        format.html { redirect_to @menstrual_history, notice: 'Menstrual history was successfully created.' }
        format.json { render action: 'show', status: :created, location: @menstrual_history }
      else
        format.html { render action: 'new' }
        format.json { render json: @menstrual_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menstrual_histories/1
  # PATCH/PUT /menstrual_histories/1.json
  def update
    respond_to do |format|
      if @menstrual_history.update(menstrual_history_params)
        format.html { redirect_to @menstrual_history, notice: 'Menstrual history was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @menstrual_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menstrual_histories/1
  # DELETE /menstrual_histories/1.json
  def destroy
    @menstrual_history.destroy
    respond_to do |format|
      format.html { redirect_to menstrual_histories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menstrual_history
      @menstrual_history = MenstrualHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menstrual_history_params
      params.require(:menstrual_history).permit(:patient_id, :onset_age, :normal_first_day_of_last_period, :period_interval, :problems_with_period, :past_problems_with_period)
    end
end
