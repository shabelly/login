class AddOrdenDeCompraIdToEntradaMaterial < ActiveRecord::Migration
  def self.up
    add_column :entrada_materials, :orden_de_compra_id, :integer
  end

  def self.down
    remove_column :entrada_materials, :orden_de_compra_id
  end
end
