class RemoveItemCodigoToItemTipoItem < ActiveRecord::Migration
  def self.up
    remove_column :item_tipo_items, :item_codigo
    remove_column :item_tipo_items, :tipoItem_codigo
  end

  def self.down
    add_column :item_tipo_items, :tipoItem_codigo, :string
    add_column :item_tipo_items, :item_codigo, :string
  end
end
