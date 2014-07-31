# encoding: utf-8
require 'httparty'

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

  def checkstat
    result = HTTParty.get("http://117.34.78.195/channels-stats?id=#{params[:mac]}", 
      :headers => { 'Content-Type' => 'application/json' } )
      if result.nil?
        back = "Not Ready"
      elsif result["subscribers"].to_i >= 1 
        back = result["channel"]
      else
        back = "Not Ready"  
      end
      render :text =>back
  end

end
