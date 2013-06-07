class VisitLabTestXrefsController < ApplicationController
  before_action :set_visit_lab_test_xref, only: [:show, :edit, :update]
  
  def new
    # find visit
    # @visit = Visit.find(params[:visit_id])
    # build lab_test_xrefs for the visit
    # lab_tests = LabTest.all.each do |lab_test|
    #   @visit_lab_test_xref = @visit.visit_lab_test_xrefs.build(visit_id: @visit.id, lab_test_id: lab_test.id)
    end
  end
  def edit
  end
  def update
  end
  def show
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
                                                :received_at,
                                                :reviewed_at,
                                                :lab_note
    )
  end
end