class CreatePluginsRoutersJoinTable < ActiveRecord::Migration
  def up
    create_table :plugins_routers, :id => false do |t|
      t.integer :plugin_id
      t.integer :router_id
    end

    add_index :plugins_routers, [:router_id, :plugin_id]
  end

  def down
    drop_table :plugins_routers
  end
end
