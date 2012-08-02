class AddUsuarioIdToEntradaMaterial < ActiveRecord::Migration
  def self.up
    add_column :entrada_materials, :usuario_id, :integer
  end

  def self.down
    remove_column :entrada_materials, :usuario_id
  end
end
