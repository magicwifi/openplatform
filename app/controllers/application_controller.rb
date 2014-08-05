class ApplicationController < ActionController::Base


  def check_admin
    unless session[:token]
      redirect_to "/404"
    end
  end

end
