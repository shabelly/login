class AddItemIdToInstanciaItem < ActiveRecord::Migration
  def self.up
    add_column :instancia_items, :item_id, :integer
  end

  def self.down
    remove_column :instancia_items, :item_id
  end
end
