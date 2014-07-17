class AddImagenameToPlugin < ActiveRecord::Migration
  def change
    add_column :plugins, :imagename, :string
  end
end
