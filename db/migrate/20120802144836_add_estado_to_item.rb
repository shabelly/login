class AddEstadoToItem < ActiveRecord::Migration
  def self.up
    add_column :items, :estado, :string
  end

  def self.down
    remove_column :items, :estado
  end
end
