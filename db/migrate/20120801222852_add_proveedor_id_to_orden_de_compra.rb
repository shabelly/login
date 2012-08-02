class AddProveedorIdToOrdenDeCompra < ActiveRecord::Migration
  def self.up
    add_column :orden_de_compras, :proveedor_id, :integer
  end

  def self.down
    remove_column :orden_de_compras, :proveedor_id
  end
end
