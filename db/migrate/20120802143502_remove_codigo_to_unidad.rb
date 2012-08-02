class RemoveCodigoToUnidad < ActiveRecord::Migration
  def self.up
    remove_column :unidads, :codigo
  end

  def self.down
    add_column :unidads, :codigo, :string
  end
end
