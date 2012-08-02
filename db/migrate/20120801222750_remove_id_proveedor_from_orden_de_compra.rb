class RemoveIdProveedorFromOrdenDeCompra < ActiveRecord::Migration
  def self.up
    remove_column :orden_de_compras, :id_proveedor
  end

  def self.down
    add_column :orden_de_compras, :id_proveedor, :string
  end
end
