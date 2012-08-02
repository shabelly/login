class CreateEntradaMaterials < ActiveRecord::Migration
  def self.up
    create_table :entrada_materials do |t|
      t.integer :id_orden_de_compra
      t.date :fecha
      t.integer :numorden
      t.integer :num_factura
      t.integer :num_ot
      t.integer :num_guia
      t.string :obsevaciones
      t.integer :id_usuario
      t.boolean :vb_jefe_depto

      t.timestamps
    end
  end

  def self.down
    drop_table :entrada_materials
  end
end
