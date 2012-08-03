class RenameTelefonoEmpresasTableToTelefonoClientes < ActiveRecord::Migration
  def self.up
    rename_table :telefono_empresas, :telefono_clientes
  end

  def self.down
  end
end
