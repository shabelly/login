class CreateSeccions < ActiveRecord::Migration
  def self.up
    create_table :seccions do |t|
      t.string :codigo
      t.string :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :seccions
  end
end
