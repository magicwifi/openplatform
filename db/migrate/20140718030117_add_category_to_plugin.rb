class AddCategoryToPlugin < ActiveRecord::Migration
  def change
    add_column :plugins, :category, :string, default:"cloudwifi"
  end
end
