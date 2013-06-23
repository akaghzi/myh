class VisitLabTestXrefsController < ApplicationController
  before_action :set_visit_lab_test_xref, only: [:show, :edit, :update]
  def index 
    @visit_lab_test_xrefs = self.search(params[:search]) || VisitLabTestXref.ordered.order("created_at")   
  end
  def new
  end
  def edit
    @patient = VisitLabTestXref.find(params[:id]).visit.patient
  end
  def update
    if @visit_lab_test_xref.update(visit_lab_test_xref_params)
      redirect_to visit_path(id: @visit_lab_test_xref.visit_id), notice: 'Lab Test was successfully updated.' 
    else
      render action: 'edit'
    end
  end
  def show
    @patient = VisitLabTestXref.find(params[:id]).visit.patient
  end
  def create
  end
  def search(search_string)
    # @patient = Patient.where("(patients.last_name||patients.first_name) like lower('%#{search_string}%')")
    # @visits = @patient.visit_ids
    @visit_lab_test_xrefs = 
      VisitLabTestXref.ordered.joins("inner join visits on visits.id = visit_lab_test_xrefs.visit_id 
                              inner join patients on patients.id = visits.patient_id 
                              and (patients.last_name||patients.first_name) like lower('%#{search_string}%') ").order("visit_id")
  end
  private
  def set_visit_lab_test_xref
    @visit_lab_test_xref = VisitLabTestXref.find(params[:id])
  end
  # Never trust parameters from the scary internet, only allow the white list through.
  def visit_lab_test_xref_params
    params.require(:visit_lab_test_xref).permit(:visit_id,
                                                :lab_test_id,
                                                :measurement,
                                                :conducted_at,
                                                :received_at,
                                                :reviewed_at,
                                                :alert_flag,
                                                :lab_note)
  end
end