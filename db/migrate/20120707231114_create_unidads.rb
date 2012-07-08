class CreateUnidads < ActiveRecord::Migration
  def self.up
    create_table :unidads do |t|
      t.string :codigo
      t.string :nombre

      t.timestamps
    end
  end

  def self.down
    drop_table :unidads
  end
end
