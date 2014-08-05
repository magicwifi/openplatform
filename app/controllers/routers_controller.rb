# encoding: utf-8
require 'httparty'

class RoutersController < ApplicationController
  before_filter :check_admin, :only=>:pub_cmd

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
    auth = {:username => "huangzhe", :password => "ctbri@smb"}
    result = HTTParty.get("http://117.34.78.195/channels-stats?id=#{params[:mac]}", :basic_auth => auth, :headers => { 'Content-Type' => 'application/json' } )
      if result.nil?
        back = "Not Ready"
      elsif result["subscribers"].to_i >= 1 
        back = result["channel"]
      else
        back = "Not Ready"  
      end
      render :text => back
  end

  def create_login_session
   router = Router.find_by_mac(params[:mac])
    if router && params[:inet] 
      session[:token] = SecureRandom.urlsafe_base64(nil, false)
      redirect_to "/plugins?mac=#{ params[:mac]} "
    else
      redirect_to "/404"
    end
  end

  def pub_cmd
    auth = {:username => "huangzhe", :password => "ctbri@smb"}
    HTTParty.post("http://117.34.78.195/publish?id=#{params[:mac]}",:basic_auth => auth,:body =>params[:cmd] )
    render :text => "success"
  end

end
