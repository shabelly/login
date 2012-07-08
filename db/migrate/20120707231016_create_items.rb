class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :codigo
      t.string :nombre
      t.string :seccion_codigo
      t.string :marca
      t.string :unidad_codigo
      t.string :proveedor_codigo
      t.string :documento_codigo
      t.float :medida

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
