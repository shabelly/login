class AddEntradaMaterialIdToEmI < ActiveRecord::Migration
  def self.up
    add_column :em_is, :item_id, :integer
    add_column :em_is, :entrada_material_id, :integer
  end

  def self.down
    remove_column :em_is, :entrada_material_id
    remove_column :em_is, :item_id
  end
end
