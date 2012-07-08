class CreateProveedors < ActiveRecord::Migration
  def self.up
    create_table :proveedors do |t|
      t.string :codigo
      t.string :nombre
      t.string :direccion
      t.string :telefono
      t.string :ciudad
      t.string :pais

      t.timestamps
    end
  end

  def self.down
    drop_table :proveedors
  end
end
