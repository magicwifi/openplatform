class XbeesController < ApplicationController

  def alldetail
     xbee_list = []
     xbees = Xbee.all
     xbees.each do |xbee|
        if xbee.running? 
	   xbee_list <<{:mac=>xbee.mac,:status => 'on' }
	else
	   xbee_list <<{:mac=>xbee.mac,:status => 'off' }
	end
     end 
     render :json => { :xbee_list => xbee_list }
  end
  
  def detail
    render :text => Xbee.detail(params) 
  end

end
