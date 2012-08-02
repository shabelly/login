class CreateOrdenDeTrabajos < ActiveRecord::Migration
  def self.up
    create_table :orden_de_trabajos do |t|
      t.string :descripcion
      t.date :fecha_recepcion
      t.integer :num_oc_cliente
      t.integer :empresa_cliente_id

      t.timestamps
    end
  end

  def self.down
    drop_table :orden_de_trabajos
  end
end
