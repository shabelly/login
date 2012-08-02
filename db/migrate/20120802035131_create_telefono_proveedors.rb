class CreateTelefonoProveedors < ActiveRecord::Migration
  def self.up
    create_table :telefono_proveedors do |t|
      t.string :nombre
      t.string :fono

      t.timestamps
    end
  end

  def self.down
    drop_table :telefono_proveedors
  end
end
