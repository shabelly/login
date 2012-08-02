class AddUsuarioIdDToSalidaMaterial < ActiveRecord::Migration
  def self.up
    add_column :salida_materials, :usuario_id_d, :integer
  end

  def self.down
    remove_column :salida_materials, :usuario_id_d
  end
end
