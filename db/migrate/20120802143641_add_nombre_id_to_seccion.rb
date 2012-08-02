class AddNombreIdToSeccion < ActiveRecord::Migration
  def self.up
    add_column :seccions, :nombre, :string
  end

  def self.down
    remove_column :seccions, :nombre
  end
end
