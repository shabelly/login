class AddTipoItemIdToItemTipoItem < ActiveRecord::Migration
  def self.up
    add_column :item_tipo_items, :tipo_item_id, :integer
  end

  def self.down
    remove_column :item_tipo_items, :tipo_item_id
  end
end
