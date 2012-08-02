class RemoveUsuarioIdToEntradaMaterial < ActiveRecord::Migration
  def self.up
    remove_column :entrada_materials, :usuario_id
  end

  def self.down
    add_column :entrada_materials, :usuario_id, :integer
  end
end
