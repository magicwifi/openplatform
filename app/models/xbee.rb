class Xbee < ActiveRecord::Base
  attr_accessible :mac, :status, :last_seen

  def running?
    if self.status == "in" && self.last_seen && Time.now-self.last_seen < 10
      return true;
    else
      return false;
    end 
  end 


  def self.detail(params)
    xbees = params[:xbees]
    status = params[:status]
    len = xbees.length-1
    for i in 0..len
        xbee = Xbee.find_by_mac(xbees[i])
	xbee.status = status[i] 
	xbee.last_seen = Time.now
        xbee.save   
    end 
    'success' 
  end



end
