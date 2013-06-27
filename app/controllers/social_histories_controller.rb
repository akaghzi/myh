class SocialHistoriesController < ApplicationController
  before_action :set_social_history, only: [:show, :edit, :update, :destroy]

  # GET /social_histories
  # GET /social_histories.json
  def index
    @social_histories = SocialHistory.all
  end

  # GET /social_histories/1
  # GET /social_histories/1.json
  def show
  end

  # GET /social_histories/new
  def new
    @social_history = SocialHistory.new
  end

  # GET /social_histories/1/edit
  def edit
  end

  # POST /social_histories
  # POST /social_histories.json
  def create
    @social_history = SocialHistory.new(social_history_params)

    respond_to do |format|
      if @social_history.save
        format.html { redirect_to patient_path(id: @social_history.patient_id), notice: 'Social history was successfully created.' }
        format.json { render action: 'show', status: :created, location: @social_history }
      else
        format.html { render action: 'new' }
        format.json { render json: @social_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /social_histories/1
  # PATCH/PUT /social_histories/1.json
  def update
    respond_to do |format|
      if @social_history.update(social_history_params)
        format.html { redirect_to patient_path(id: @social_history.patient_id), notice: 'Social history was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @social_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /social_histories/1
  # DELETE /social_histories/1.json
  # def destroy
 #    @social_history.destroy
 #    respond_to do |format|
 #      format.html { redirect_to social_histories_url }
 #      format.json { head :no_content }
 #    end
 #  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social_history
      @social_history = SocialHistory.find(params[:id])
      @patient = @social_history.patient
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def social_history_params
      params.require(:social_history).permit(:patient_id, :smoking, :smoking_quantity, :drinking, :drinking_quantity, :physical_excercise, :excercise_per_day, :substance_abuse, :substance_type, :profession, :pet, :living_with_family, :marital_status)
    end
end
