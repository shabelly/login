class RemoveTipoItemIdToModelo < ActiveRecord::Migration
  def self.up
    remove_column :modelos, :Tipo_Item_id
  end

  def self.down
    add_column :modelos, :Tipo_Item_id, :integer
  end
end
