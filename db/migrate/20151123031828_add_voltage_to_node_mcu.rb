class AddVoltageToNodeMcu < ActiveRecord::Migration
  def change
    add_column :node_mcus, :voltage, :float
  end
end
