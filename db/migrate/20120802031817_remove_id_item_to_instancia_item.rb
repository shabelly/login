class RemoveIdItemToInstanciaItem < ActiveRecord::Migration
  def self.up
    remove_column :instancia_items, :id_item
  end

  def self.down
    add_column :instancia_items, :id_item, :integer
  end
end
