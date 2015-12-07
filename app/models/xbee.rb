class Xbee < ActiveRecord::Base
  attr_accessible :mac, :status, :last_seen

  def running?
    if self.status == "in" && self.last_seen && Time.now-self.last_seen < 10
      return true;
    else
      return false;
    end 
  end 

end
