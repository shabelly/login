class AddAtributesToRi < ActiveRecord::Migration
  def self.up
    add_column :r_is, :item_id, :integer
    add_column :r_is, :requisicion_id, :integer
  end

  def self.down
    remove_column :r_is, :requisicion_id
    remove_column :r_is, :item_id
  end
end
