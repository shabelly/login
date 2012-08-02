class AddTipoItemIdToModelo < ActiveRecord::Migration
  def self.up
    add_column :modelos, :tipo_item_id, :integer
  end

  def self.down
    remove_column :modelos, :tipo_item_id
  end
end
