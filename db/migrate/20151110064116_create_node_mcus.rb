class CreateNodeMcus < ActiveRecord::Migration
  def change
    create_table :node_mcus do |t|
      t.string :mac
      t.datetime :last_seen

      t.timestamps
    end
  end
end
