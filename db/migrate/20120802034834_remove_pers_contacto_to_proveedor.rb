class RemovePersContactoToProveedor < ActiveRecord::Migration
  def self.up
    remove_column :proveedors, :pers_contacto
    remove_column :proveedors, :fono_pers_contacto
  end

  def self.down
    add_column :proveedors, :fono_pers_contacto, :string
    add_column :proveedors, :pers_contacto, :string
  end
end
