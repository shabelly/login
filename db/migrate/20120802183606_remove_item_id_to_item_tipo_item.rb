class RemoveItemIdToItemTipoItem < ActiveRecord::Migration
  def self.up
    remove_column :item_tipo_items, :tipo_item
  end

  def self.down
    add_column :item_tipo_items, :tipo_item, :integer
  end
end
