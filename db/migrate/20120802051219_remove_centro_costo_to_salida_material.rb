class RemoveCentroCostoToSalidaMaterial < ActiveRecord::Migration
  def self.up
    remove_column :salida_materials, :centro_costo
  end

  def self.down
    add_column :salida_materials, :centro_costo, :string
  end
end
