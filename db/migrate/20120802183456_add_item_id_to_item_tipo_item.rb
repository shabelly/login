class AddItemIdToItemTipoItem < ActiveRecord::Migration
  def self.up
    add_column :item_tipo_items, :item_id, :integer
    add_column :item_tipo_items, :tipo_item, :integer
  end

  def self.down
    remove_column :item_tipo_items, :tipo_item
    remove_column :item_tipo_items, :item_id
  end
end
