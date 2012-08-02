class AddFormaPagoIdToFpOdc < ActiveRecord::Migration
  def self.up
    add_column :fp_odcs, :forma_pago_id, :integer
    add_column :fp_odcs, :orden_de_compra_id, :integer
  end

  def self.down
    remove_column :fp_odcs, :orden_de_compra_id
    remove_column :fp_odcs, :forma_pago_id
  end
end
