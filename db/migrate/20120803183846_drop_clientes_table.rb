class DropClientesTable < ActiveRecord::Migration
  def self.up
    drop_table :clientes
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
