class AddOrdenDeCompraIdToOdcR < ActiveRecord::Migration
  def self.up
    add_column :odc_rs, :orden_de_compra_id, :integer
    add_column :odc_rs, :requisicion_id, :integer
  end

  def self.down
    remove_column :odc_rs, :requisicion_id
    remove_column :odc_rs, :orden_de_compra_id
  end
end
