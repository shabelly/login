class RemoveCodigoToProveedor < ActiveRecord::Migration
  def self.up
    remove_column :proveedors, :codigo
  end

  def self.down
    add_column :proveedors, :codigo, :string
  end
end
