class RenameEmpresasToClientes < ActiveRecord::Migration
  def self.up
    rename_table :empresas, :clientes
  end

  def self.down
    rename_table :clientes, :empresas
  end
end
