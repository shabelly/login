class CreateSalidaMaterials < ActiveRecord::Migration
  def self.up
    create_table :salida_materials do |t|
      t.integer :num_ot
      t.string :centro_costo
      t.date :fecha
      t.date :observacion
      t.integer :usuario_id_d
      t.integer :usuario_id_s

      t.timestamps
    end
  end

  def self.down
    drop_table :salida_materials
  end
end
