class AddRandomToNodeMcu < ActiveRecord::Migration
  def change
    add_column :node_mcus, :random, :integer
  end
end
