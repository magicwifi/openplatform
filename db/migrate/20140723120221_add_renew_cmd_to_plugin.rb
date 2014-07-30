class AddRenewCmdToPlugin < ActiveRecord::Migration
  def change
    add_column :plugins, :renewcmd, :string
  end
end
