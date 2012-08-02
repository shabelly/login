class DropEmpresaClienteTable < ActiveRecord::Migration
  def self.up
    drop_table :empresa_clientes
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
