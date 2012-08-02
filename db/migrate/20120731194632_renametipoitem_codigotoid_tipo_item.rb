class RenameModelo < ActiveRecord::Migration
  def change
    rename_column :modelos, :tipoItem_codigo, :id_tipo_item, :integer
  end
end
