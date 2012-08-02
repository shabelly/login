class AddFormaPagoIdToEfectivo < ActiveRecord::Migration
  def self.up
    add_column :efectivos, :forma_pago_id, :integer
  end

  def self.down
    remove_column :efectivos, :forma_pago_id
  end
end
