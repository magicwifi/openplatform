class Plugin < ActiveRecord::Base
  attr_accessible :name, :imagename
  has_and_belongs_to_many :routers
  has_one :plugin_detail
end
