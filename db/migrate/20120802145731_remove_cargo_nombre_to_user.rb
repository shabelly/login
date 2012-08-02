class RemoveCargoNombreToUser < ActiveRecord::Migration
  def self.up
    remove_column :users, :cargo_nombre
  end

  def self.down
    add_column :users, :cargo_nombre, :string
  end
end
