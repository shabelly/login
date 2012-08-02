class RemoveCodigoToModelo < ActiveRecord::Migration
  def self.up
    remove_column :modelos, :codigo
    remove_column :modelos, :tipoItem_codigo
  end

  def self.down
    add_column :modelos, :tipoItem_codigo, :string
    add_column :modelos, :codigo, :string
  end
end
