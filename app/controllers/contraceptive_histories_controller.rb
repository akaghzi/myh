class ContraceptiveHistoriesController < ApplicationController
  before_action :set_contraceptive_history, only: [:show, :edit, :update, :destroy]

  # GET /contraceptive_histories
  # GET /contraceptive_histories.json
  def index
    @contraceptive_histories = ContraceptiveHistory.all
  end

  # GET /contraceptive_histories/1
  # GET /contraceptive_histories/1.json
  def show
  end

  # GET /contraceptive_histories/new
  def new
    @patient = Patient.find(params[:patient_id])
    @contraceptive_history = @patient.contraceptive_histories.build
    # @contraceptive_history = ContraceptiveHistory.new
  end

  # GET /contraceptive_histories/1/edit
  def edit
  end

  # POST /contraceptive_histories
  # POST /contraceptive_histories.json
  def create
    @contraceptive_history = ContraceptiveHistory.new(contraceptive_history_params)

    respond_to do |format|
      if @contraceptive_history.save
        format.html { redirect_to @contraceptive_history, notice: 'Contraceptive history was successfully created.' }
        format.json { render action: 'show', status: :created, location: @contraceptive_history }
      else
        format.html { render action: 'new' }
        format.json { render json: @contraceptive_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contraceptive_histories/1
  # PATCH/PUT /contraceptive_histories/1.json
  def update
    respond_to do |format|
      if @contraceptive_history.update(contraceptive_history_params)
        format.html { redirect_to @contraceptive_history, notice: 'Contraceptive history was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @contraceptive_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contraceptive_histories/1
  # DELETE /contraceptive_histories/1.json
  def destroy
    @contraceptive_history.destroy
    respond_to do |format|
      format.html { redirect_to contraceptive_histories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contraceptive_history
      @contraceptive_history = ContraceptiveHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contraceptive_history_params
      params.require(:contraceptive_history).permit(:patient_id, :contraceptive_type, :contraceptive_problems)
    end
end
