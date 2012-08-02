class AddAtributeToIiI < ActiveRecord::Migration
  def self.up
    add_column :ii_is, :instancia_item_id, :integer
    add_column :ii_is, :inventario_id, :integer
  end

  def self.down
    remove_column :ii_is, :inventario_id
    remove_column :ii_is, :instancia_item_id
  end
end
