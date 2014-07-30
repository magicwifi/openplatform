class Router < ActiveRecord::Base
  attr_accessible :mac, :software, :factory, :last_seen, :renew
  has_and_belongs_to_many :plugins

  def self.ping(params)
    node = self.find_by_mac(params[:gw_id])
    pongstr = "Pong"
    if node
      if node.renew
        plugins = Plugin.all - node.plugins
        cmd = " Conf:"

        plugins.each do |e|
          cmd += e.renewcmd || ""
        end
        pongstr += cmd
      end
      node.update_attributes(
        :factory => params[:factory],
        :software => params[:software],
        :renew => false,
        :last_seen => Time.now
      )
    end
      pongstr
  end
end
