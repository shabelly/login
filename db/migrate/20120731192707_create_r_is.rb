class CreateRIs < ActiveRecord::Migration
  def self.up
    create_table :r_is do |t|
      t.integer :cantidad
      t.string :prioridad

      t.timestamps
    end
  end

  def self.down
    drop_table :r_is
  end
end
