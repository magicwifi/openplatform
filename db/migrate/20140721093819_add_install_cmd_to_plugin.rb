class AddInstallCmdToPlugin < ActiveRecord::Migration
  def change
    add_column :plugins, :installcmd, :string
  end
end
