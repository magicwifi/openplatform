class Plugin < ActiveRecord::Base
  attr_accessible :name, :imagename, :ishot, :category, :installcmd, :removecmd, :opkg, :renewcmd
  has_and_belongs_to_many :routers
  has_one :plugin_detail
end
