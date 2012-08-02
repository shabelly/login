class RemoveNumOrdenToOrdenDeCompra < ActiveRecord::Migration
  def self.up
    remove_column :orden_de_compras, :num_orden
  end

  def self.down
    add_column :orden_de_compras, :num_orden, :string
  end
end
