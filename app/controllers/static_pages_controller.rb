class StaticPagesController < ApplicationController
  skip_before_filter :check_authentication
  
  def home
  end
  def work
    @appointments = Appointment.todays
    @lab_tests = VisitLabTestXref.received.order("created_at")
  end
  def help
  end
  def contact
  end
end
