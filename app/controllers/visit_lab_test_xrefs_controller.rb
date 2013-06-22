class VisitLabTestXrefsController < ApplicationController
  before_action :set_visit_lab_test_xref, only: [:show, :edit, :update]
  def index 
    @visit_lab_test_xrefs = VisitLabTestXref.ordered.order("created_at")   
  end
  def new
  end
  def edit
    @patient = VisitLabTestXref.find(params[:id]).visit.patient
    @visit_lab_test_xref = VisitLabTestXref.find(params[:id])
  end
  def update
    if @visit_lab_test_xref.update(visit_lab_test_xref_params)
      redirect_to visit_lab_test_xrefs_path, notice: 'Lab Test was successfully updated.' 
    else
      render action: 'edit'
    end
  end
  def show
    @patient = VisitLabTestXref.find(params[:id]).visit.patient
  end
  def create
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
                                                :lab_note
    )
  end
end