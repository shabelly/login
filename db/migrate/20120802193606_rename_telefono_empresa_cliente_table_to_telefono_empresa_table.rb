class RenameTelefonoEmpresaClienteTableToTelefonoEmpresaTable < ActiveRecord::Migration
  def self.up
    rename_table :telefono_empresa_clientes, :telefono_empresas
  end

  def self.down
    rename_table :telefono_empresas, :telefono_empresa_clientes
  end
end
