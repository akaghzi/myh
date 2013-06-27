class VisitLabTestXrefsController < ApplicationController
  before_action :set_visit_lab_test_xref, only: [:show, :edit, :update, :destroy]

  # GET /visit_lab_test_xrefs
  # GET /visit_lab_test_xrefs.json
  def index
    @visit_lab_test_xrefs = self.search(params[:search]) || VisitLabTestXref.ordered
    # @visit_lab_test_xrefs = VisitLabTestXref.future.order("visit_lab_test_xref_date,visit_lab_test_xref_slot_id")
  end

  # GET /visit_lab_test_xrefs/1
  # GET /visit_lab_test_xrefs/1.json
  def show
  end

  # GET /visit_lab_test_xrefs/new
  def new
  end

  # GET /visit_lab_test_xrefs/1/edit
  def edit
  end

  # POST /visit_lab_test_xrefs
  # POST /visit_lab_test_xrefs.json
  def create
  end

  # PATCH/PUT /visit_lab_test_xrefs/1
  # PATCH/PUT /visit_lab_test_xrefs/1.json
  def update
    respond_to do |format|
      if @visit_lab_test_xref.update(visit_lab_test_xref_params)
        format.html { redirect_to visit_lab_test_xrefs_path, notice: 'VisitLabTestXref was successfully updated.' }
        format.json { head :no_content }
      else
        # render 'visit_lab_test_xrefs/edit'
        format.html { render action: 'edit' }
        # format.json { render json: @visit_lab_test_xref.errors, status: :unprocessable_entity }
      end
    end
  end
  def search(search_string)
    @visit_lab_test_xrefs = 
      VisitLabTestXref.ordered.joins("inner join visits on visits.id = visit_lab_test_xrefs.visit_id 
                              inner join patients on patients.id = visits.patient_id 
                              and (patients.last_name||patients.first_name) like lower('%#{search_string}%') ").order("visit_id")
  end
  # DELETE /visit_lab_test_xrefs/1
  # DELETE /visit_lab_test_xrefs/1.json
  # def destroy
  #   @visit_lab_test_xref.destroy
  #   respond_to do |format|
  #     format.html { redirect_to visit_lab_test_xrefs_url }
  #     format.json { head :no_content }
  #   end
  # end

  private
  def set_visit_lab_test_xref
    @visit_lab_test_xref = VisitLabTestXref.find(params[:id])
    @patient = @visit_lab_test_xref.visit.patient
  end
  # Never trust parameters from the scary internet, only allow the white list through.
  def visit_lab_test_xref_params
    params.require(:visit_lab_test_xref).permit(:visit_id, :lab_test_id, :measurement, :conducted_at, :received_at,
                                                :reviewed_at, :alert_flag, :lab_note)
  end
end
