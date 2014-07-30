class AddRenewToRouter < ActiveRecord::Migration
  def change
     add_column :routers, :renew, :boolean
  end
end
