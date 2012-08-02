class CreateTelefonoPersonas < ActiveRecord::Migration
  def self.up
    create_table :telefono_personas do |t|
      t.string :nombre
      t.string :telefono

      t.timestamps
    end
  end

  def self.down
    drop_table :telefono_personas
  end
end
