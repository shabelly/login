class RemoveUsuarioIdFromEntradaMaterial < ActiveRecord::Migration
  def self.up
    remove_column :entrada_materials, :id_usuario
  end

  def self.down
    add_column :entrada_materials, :id_usuario, :integer
  end
end
