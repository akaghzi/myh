class VisitLabTestXrefsController < ApplicationController
  def new
    # find visit
    @visit = Visit.find(params[:visit_id])
    # build lab_test_xrefs for the visit
    lab_tests = LabTest.all.each do |lab_test|
      @visit_lab_test_xref = @visit.visit_lab_test_xrefs.build(visit_id: @visit.id, lab_test_id: lab_test.id)
    end
  end
  def edit
    @visit = Visit.find(params[:visit_id])
  end
  def update
    @visit = Visit.find(params[:visit_id])
  end
  def show
    @visit = Visit.find(params[:visit_id])
  end
  def create
  end
end
