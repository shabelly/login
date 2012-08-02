class AddFcPersContRutToProveedors < ActiveRecord::Migration
  def self.up
    add_column :proveedors, :pers_contacto, :string
    add_column :proveedors, :fono_pers_contacto, :string
    add_column :proveedors, :rut, :string
  end

  def self.down
    remove_column :proveedors, :rut
    remove_column :proveedors, :fono_pers_contacto
    remove_column :proveedors, :pers_contacto
  end
end
