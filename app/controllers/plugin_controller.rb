class PluginController < ApplicationController
  def index
    r = Router.find_by_mac(params[:mac])
    if r.nil?
      redirect_to "/404"
      return
    end
    @plugins = Plugin.all - r.plugins;
  end

  def installed
    r = Router.find_by_mac(params[:mac])
    if r.nil?
      redirect_to "/404"
      return
    end
    @plugins = r.plugins;
  end

  def show
    @plugin_detail  = Plugin.find(params[:id]).plugin_detail
  end

end
