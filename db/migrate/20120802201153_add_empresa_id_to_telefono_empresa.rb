class AddEmpresaIdToTelefonoEmpresa < ActiveRecord::Migration
  def self.up
    add_column :telefono_empresas, :empresa_id, :integer
  end

  def self.down
    remove_column :telefono_empresas, :empresa_id
  end
end
