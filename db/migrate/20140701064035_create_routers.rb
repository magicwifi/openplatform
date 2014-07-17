class CreateRouters < ActiveRecord::Migration
  def change
    create_table :routers do |t|
      t.string :mac

      t.timestamps
    end
  end
end
