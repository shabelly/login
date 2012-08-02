class AddOrdenDeTrabadoIdToSalidaMaterial < ActiveRecord::Migration
  def self.up
    add_column :salida_materials, :orden_de_trabajo_id, :integer
  end

  def self.down
    remove_column :salida_materials, :orden_de_trabajo_id
  end
end
