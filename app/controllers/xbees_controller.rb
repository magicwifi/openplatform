class XbeesController < ApplicationController

  def alldetail
     xbee_list = []
     xbee = Xbee.all
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
    xbees = params[:xbees]
    status = params[:status]
    len = xbees.length-1
    for i in 0..len
        xbee = Xbee.find_by_mac(xbee[i])
	xbee.status = status[i] 
	xbee.last_seen = Time.now
        xbee.save   
    end 
    render :text =>'success' 
  end

end
