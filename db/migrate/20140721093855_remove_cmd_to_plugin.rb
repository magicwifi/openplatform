class RemoveCmdToPlugin < ActiveRecord::Migration
  def change
    add_column :plugins, :removecmd, :string
  end
end
