class AddSthToRouters < ActiveRecord::Migration
  def change
    add_column :routers, :software, :string
    add_column :routers, :factory, :string
    add_column :routers, :last_seen, :datetime
  end
end
