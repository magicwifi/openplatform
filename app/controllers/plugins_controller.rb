class PluginsController < ApplicationController
  before_filter :check_admin, :except => [:installing, :uninstalling]

  def index
    r = Router.find_by_mac(params[:mac])
    if r.nil?
      redirect_to "/404"
      return
    end
    @cloudwifis = Plugin.where(category:"cloudwifi") - r.plugins;
    @accelerates = Plugin.where(category:"accelerate") - r.plugins;
    @smartdpis = Plugin.where(category:"smartdpi") - r.plugins;
    @router  = r 
  end

  def installed
    r = Router.find_by_mac(params[:mac])
    if r.nil?
      redirect_to "/404"
      return
    end
    @plugins = r.plugins;
    @router  = r 
  end

  def installing
    r = Router.find_by_mac(params[:routermac]);
    p = Plugin.find_by_imagename(params[:imagename]);

    if r.nil? or p.nil?
      render :text => "less some param"
      return
    end

    r.plugins << p ; 
    render :text => "success"
  end

  def checkpstatus
    r = Router.find_by_mac(params[:routermac]);
    p = Plugin.find_by_imagename(params[:imagename]);
    if r.nil? or p.nil?
      render :text => "less some param"
      return
    end

    if r.plugins.include? p
      render :text => "install"
    else
      render :text => "remove"
    end
  end

  def uninstalling
    r = Router.find_by_mac(params[:routermac]);
    p = Plugin.find_by_imagename(params[:imagename]);
    if r.nil? or p.nil?
      render :text => "less some param"
      return
    end
    r.plugins.delete p; 
    render :text => "success"
  end

  def boot
    r = Router.find_by_mac(params[:mac]);
    plugins = Plugin.all - r.plugins;
    bootcmd = "Conf:";
    for p in plugins
      if p.opkg && p.removecmd
        bootcmd += p.removecmd
      end
    end
    render :text => bootcmd
  end

  def show
    r = Router.find_by_mac(params[:mac])
    if r.nil?
      redirect_to "/404"
      return
    end
    @plugin_detail  = Plugin.find(params[:id]).plugin_detail
    @plugin  = Plugin.find(params[:id])
    @installed = r.plugins.include? @plugin
    @router = r
  end

end
