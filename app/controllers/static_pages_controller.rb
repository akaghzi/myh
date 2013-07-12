class StaticPagesController < ApplicationController
  skip_before_filter :check_authentication
  
  def home
  if session[:expire_time] && session[:expire_time]  < Time.now
    signout 
  end
  end
  def work
    @appointments = Appointment.todays
    @lab_tests = VisitLabTestXref.received.order("created_at")
    @followup = VisitLabTestXref.follow
  end
  def help
  end
  def contact
  end
end
