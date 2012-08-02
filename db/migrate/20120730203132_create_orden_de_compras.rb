class CreateOrdenDeCompras < ActiveRecord::Migration
  def self.up
    create_table :orden_de_compras do |t|
      t.string :num_orden
      t.date :fecha
      t.integer :neto
      t.integer :total
      t.string :id_proveedor

      t.timestamps
    end
  end

  def self.down
    drop_table :orden_de_compras
  end
end
