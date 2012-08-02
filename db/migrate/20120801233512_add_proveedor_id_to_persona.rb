class AddProveedorIdToPersona < ActiveRecord::Migration
  def self.up
    add_column :personas, :proveedor_id, :integer
  end

  def self.down
    remove_column :personas, :proveedor_id
  end
end
