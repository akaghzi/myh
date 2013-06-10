class PregnancyHistoriesController < ApplicationController
  before_action :set_pregnancy_history, only: [:show, :edit, :update, :destroy]

  # GET /pregnancy_histories
  # GET /pregnancy_histories.json
  def index
    @pregnancy_histories = PregnancyHistory.all
  end

  # GET /pregnancy_histories/1
  # GET /pregnancy_histories/1.json
  def show
  end

  # GET /pregnancy_histories/new
  def new
    @patient = Patient.find(params[:patient_id])
    @pregnancy_history = @patient.pregnancy_histories.build
    # @pregnancy_history = PregnancyHistory.new
  end

  # GET /pregnancy_histories/1/edit
  def edit
  end

  # POST /pregnancy_histories
  # POST /pregnancy_histories.json
  def create
    @pregnancy_history = PregnancyHistory.new(pregnancy_history_params)

    respond_to do |format|
      if @pregnancy_history.save
        format.html { redirect_to @pregnancy_history, notice: 'Pregnancy history was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pregnancy_history }
      else
        format.html { render action: 'new' }
        format.json { render json: @pregnancy_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pregnancy_histories/1
  # PATCH/PUT /pregnancy_histories/1.json
  def update
    respond_to do |format|
      if @pregnancy_history.update(pregnancy_history_params)
        format.html { redirect_to @pregnancy_history, notice: 'Pregnancy history was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pregnancy_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pregnancy_histories/1
  # DELETE /pregnancy_histories/1.json
  def destroy
    @pregnancy_history.destroy
    respond_to do |format|
      format.html { redirect_to pregnancy_histories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pregnancy_history
      @pregnancy_history = PregnancyHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pregnancy_history_params
      params.require(:pregnancy_history).permit(:patient_id, :full_term_births, :preterm_births, :spont_miscarriages, :elective_abortions, :living_children)
    end
end
