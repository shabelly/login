class DropDocumentosTable < ActiveRecord::Migration
  def self.up
    drop_table :documentos
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
