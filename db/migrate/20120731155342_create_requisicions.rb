class CreateRequisicions < ActiveRecord::Migration
  def self.up
    create_table :requisicions do |t|
      t.integer :oti
      t.date :fecha
      t.string :descripcion
      t.integer :id_usuario

      t.timestamps
    end
  end

  def self.down
    drop_table :requisicions
  end
end
