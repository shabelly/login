class CreateModelos < ActiveRecord::Migration
  def self.up
    create_table :modelos do |t|
      t.string :codigo
      t.string :nombre
      t.string :tipoItem_codigo

      t.timestamps
    end
  end

  def self.down
    drop_table :modelos
  end
end
