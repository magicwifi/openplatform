class AddLastSeenToXbee < ActiveRecord::Migration
  def change
    add_column :xbees, :last_seen, :datetime
  end
end
