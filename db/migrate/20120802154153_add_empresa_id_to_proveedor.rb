class AddEmpresaIdToProveedor < ActiveRecord::Migration
  def self.up
    add_column :proveedors, :empresa_id, :integer
  end

  def self.down
    remove_column :proveedors, :empresa_id
  end
end
