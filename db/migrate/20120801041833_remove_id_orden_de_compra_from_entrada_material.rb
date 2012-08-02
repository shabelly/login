class RemoveIdOrdenDeCompraFromEntradaMaterial < ActiveRecord::Migration
  def self.up
    remove_column :entrada_materials, :id_orden_de_compra
  end

  def self.down
    add_column :entrada_materials, :id_orden_de_compra, :integer
  end
end
