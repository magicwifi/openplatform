class AddDescsToPluginDetail < ActiveRecord::Migration
  def change
     add_column :plugin_details, :desc1, :text
     add_column :plugin_details, :desc2, :text
     add_column :plugin_details, :desc3, :text
  end
end
