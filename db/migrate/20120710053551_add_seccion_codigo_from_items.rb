class AddSeccionCodigoFromItems < ActiveRecord::Migration
  def self.up
    add_column :items, :seccion_id, :integer
    add_column :items, :unidad_id,  :integer
    add_column :items, :proveedor_id, :integer
    add_column :items, :documento_id, :integer
  end

  def self.down
    remove_column :items, :seccion_id
    remove_column :items, :unidad_id
    remove_column :items, :proveedor_id
    remove_column :items, :documento_id

  end
end
