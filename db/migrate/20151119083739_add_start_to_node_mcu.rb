class AddStartToNodeMcu < ActiveRecord::Migration
  def change
    add_column :node_mcus, :start, :integer
  end
end
