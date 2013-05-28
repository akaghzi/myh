class VisitLabTestXrefsController < ApplicationController
  def new
    @visit = Visit.find(params[:visit_id])
  end
  def edit
    @visit = Visit.find(params[:visit_id])
  end
  def update
    @visit = Visit.find(params[:visit_id])
#    if @visit.lab_test_ids.save?
#      redirect_to edit_visit_path(id: @visit.id)
#    end
  end
  def show
    @visit = Visit.find(params[:visit_id])
  end
  def create
    @visit = Visit.find(params[:visit_id])
  end
end
