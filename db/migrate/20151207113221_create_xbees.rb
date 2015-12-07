class CreateXbees < ActiveRecord::Migration
  def change
    create_table :xbees do |t|
      t.string :mac
      t.string :status

      t.timestamps
    end
  end
end
