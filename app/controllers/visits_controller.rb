class VisitsController < ApplicationController
  before_action :set_visit, only: [:show, :edit, :update, :destroy]

  # GET /visits
  # GET /visits.json
  def index
    @visits = Visit.order("visited_at")
  end

  # GET /visits/1
  # GET /visits/1.json
  def show
  end

  # GET /visits/new
  def new
    @visit = Visit.create(patient_id: (params[:patient_id]), 
                          appointment_id: (params[:appointment_id]),
                          visited_at: Time.now.to_datetime, 
                          visit_reason: (params[:visit_reason]))
  end

  # GET /visits/1/edit
  def edit
    @visit = Visit.find(params[:id])
  end

  # POST /visits
  # POST /visits.json
  def create
    @visit = Visit.new(visit_params)
    respond_to do |format|
      if @visit.save
        # format.html { redirect_to @patient.visits, notice: 'Visit was successfully created.' }
        format.html { redirect_to @visit, notice: 'Visit was successfully created.' }
        format.json { render action: 'show', status: :created, location: @visit }
      else
        format.html { render action: 'new' }
        format.json { render json: @visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visits/1
  # PATCH/PUT /visits/1.json
  def update
    if params[:visit][:update_lab_tests]
      params[:visit][:lab_test_ids] ||= []
      params[:visit] = params[:visit].except(:update_lab_tests)
    end 
       
    respond_to do |format|
      if @visit.update(visit_params)
        format.html { redirect_to edit_visit_path(@visit), notice: 'Visit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @visit.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def order_lab_tests
    @visit = Visit.find(params[:visit_id])
  end
  
  # DELETE /visits/1
  # DELETE /visits/1.json
  # def destroy
  #   @visit.destroy
  #   respond_to do |format|
  #     format.html { redirect_to visits_url }
  #     format.json { head :no_content }
  #   end
  # end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_visit
    @visit = Visit.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def visit_params
    params.require(:visit).permit(:patient_id, :appointment_id, :visited_at, :visit_reason, :s_note, :o_note, 
                                  :a_note, :p_note,:update_lab_tests, :drug_allergy, :drug_interaction, 
                                  :lab_test_ids => [])
  end
end
