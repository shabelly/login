class RenameEmpresaIdToOrdenDeTrabajo < ActiveRecord::Migration
  def self.up
    rename_column :orden_de_trabajos, :empresa_id, :cliente_id
  end

  def self.down
  end
end
