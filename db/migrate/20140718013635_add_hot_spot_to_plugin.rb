class AddHotSpotToPlugin < ActiveRecord::Migration
  def change
    add_column :plugins, :ishot, :boolean, default:false
  end
end
