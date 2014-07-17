class CreatePluginDetails < ActiveRecord::Migration
  def change
    create_table :plugin_details do |t|
      t.integer :plugin_id
      t.text :detail
      t.datetime :publish_time
      t.string :developer
      t.string :version
      t.string :category

      t.timestamps
    end
  end
end
