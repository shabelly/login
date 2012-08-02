class RemoveTelefonoToProveedor < ActiveRecord::Migration
  def self.up
    remove_column :proveedors, :telefono
  end

  def self.down
    add_column :proveedors, :telefono, :string
  end
end
