class DropHerramientaTable < ActiveRecord::Migration
  def self.up
    drop_table :herramienta
  end

  def self.down
     raise ActiveRecord::IrreversibleMigration
  end
end
