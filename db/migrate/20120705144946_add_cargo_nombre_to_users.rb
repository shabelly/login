class AddCargoNombreToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :cargo_nombre, :string
  end

  def self.down
    remove_column :users, :cargo_nombre
  end
end
