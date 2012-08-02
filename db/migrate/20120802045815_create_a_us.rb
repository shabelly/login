class CreateAUs < ActiveRecord::Migration
  def self.up
    create_table :a_us do |t|
      t.date :fecha_inicio
      t.date :fecha_termino
      t.string :estado
      t.text :observacion

      t.timestamps
    end
  end

  def self.down
    drop_table :a_us
  end
end
