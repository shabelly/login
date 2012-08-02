class CreateClientes < ActiveRecord::Migration
  def self.up
    create_table :clientes do |t|
      t.integer :orden_de_trabajo_id
      t.integer :empresa_id

      t.timestamps
    end
  end

  def self.down
    drop_table :clientes
  end
end
