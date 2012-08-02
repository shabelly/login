class RemoveUsuarioIdDToSalidaMaterial < ActiveRecord::Migration
  def self.up
    remove_column :salida_materials, :usuario_id_d
  end

  def self.down
    add_column :salida_materials, :usuario_id_d, :integer
  end
end
