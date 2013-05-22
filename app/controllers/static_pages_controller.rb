class StaticPagesController < ApplicationController
  skip_before_filter :check_authentication
  
  def home
  end

  def help
  end

  def contact
  end
end
