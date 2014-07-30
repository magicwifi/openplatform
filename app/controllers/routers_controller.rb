class RoutersController < ApplicationController

  def ping
    render :text => Router.ping(params)
  end

  def show
    @router =  Router.find_by_mac(params[:mac])
    if @router.nil?
      redirect_to "/404"
      return
    end
  end

  def renew
    r =  Router.find_by_mac(params[:mac])
    if r.nil?
      render :text =>"fail"
      return
    end
   r.update_attributes(renew:true);
   render :text =>"success"
  end


end
