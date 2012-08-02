class RemoveCodigoToItem < ActiveRecord::Migration
  def self.up
    remove_column :items, :codigo
  end

  def self.down
    add_column :items, :codigo, :string
  end
end
