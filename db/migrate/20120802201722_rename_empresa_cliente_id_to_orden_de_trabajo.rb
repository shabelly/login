class RenameEmpresaClienteIdToOrdenDeTrabajo < ActiveRecord::Migration
  def self.up
    rename_column :orden_de_trabajos, :empresa_cliente_id, :empresa_id
  end

  def self.down
  end
end
