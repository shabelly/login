class RemoveCodigoToSeccion < ActiveRecord::Migration
  def self.up
    remove_column :seccions, :codigo
  end

  def self.down
    add_column :seccions, :codigo, :string
  end
end
