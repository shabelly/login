class AddOrdenDeCompraIdToOdcI < ActiveRecord::Migration
  def self.up
    add_column :odc_is, :orden_de_compra_id, :integer
    add_column :odc_is, :item_id, :integer
  end

  def self.down
    remove_column :odc_is, :item_id
    remove_column :odc_is, :orden_de_compra_id
  end
end
