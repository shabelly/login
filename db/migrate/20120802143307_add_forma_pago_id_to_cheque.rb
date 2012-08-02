class AddFormaPagoIdToCheque < ActiveRecord::Migration
  def self.up
    add_column :cheques, :forma_pago_id, :integer
  end

  def self.down
    remove_column :cheques, :forma_pago_id
  end
end
