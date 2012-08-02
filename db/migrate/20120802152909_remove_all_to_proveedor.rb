class RemoveAllToProveedor < ActiveRecord::Migration
  def self.up
    remove_column :proveedors, :nombre
    remove_column :proveedors, :direccion
    remove_column :proveedors, :ciudad
    remove_column :proveedors, :pais
    remove_column :proveedors, :rut
  end

  def self.down
    add_column :proveedors, :rut, :string
    add_column :proveedors, :pais, :string
    add_column :proveedors, :ciudad, :string
    add_column :proveedors, :direccion, :string
    add_column :proveedors, :nombre, :string
  end
end
