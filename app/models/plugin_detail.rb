class PluginDetail < ActiveRecord::Base
  attr_accessible :category, :detail, :developer, :plugin_id, :publish_time, :version
  belongs_to :plugin
end
