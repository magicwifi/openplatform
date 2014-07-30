class AddOpkgToPlugin < ActiveRecord::Migration
  def change
    add_column :plugins, :opkg, :boolean, default:false
  end
end
