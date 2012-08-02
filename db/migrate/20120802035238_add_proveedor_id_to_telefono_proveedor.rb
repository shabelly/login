class AddProveedorIdToTelefonoProveedor < ActiveRecord::Migration
  def self.up
    add_column :telefono_proveedors, :proveedor_id, :integer
  end

  def self.down
    remove_column :telefono_proveedors, :proveedor_id
  end
end
