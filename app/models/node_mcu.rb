class NodeMcu < ActiveRecord::Base
  attr_accessible :last_seen, :mac, :start, :random, :voltage
  
  def running?
    if self.last_seen && Time.now-self.last_seen < 10
      return true;
    else
      return false;
    end 
  end 

   def self.ping(params)
     node = self.find_by_mac(params[:gw_mac])
     pongstr = "Pong"
     if node
       node.update_attributes(
         :last_seen => Time.now
       )
     end
     pongstr
  end
 

end
