class AddTypeToEmpresa < ActiveRecord::Migration
  def self.up
    add_column :empresas, :type, :string
  end

  def self.down
    remove_column :empresas, :type
  end
end
