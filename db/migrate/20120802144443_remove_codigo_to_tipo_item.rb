class RemoveCodigoToTipoItem < ActiveRecord::Migration
  def self.up
    remove_column :tipo_items, :codigo
  end

  def self.down
    add_column :tipo_items, :codigo, :string
  end
end
