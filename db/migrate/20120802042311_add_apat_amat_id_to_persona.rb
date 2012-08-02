class AddApatAmatIdToPersona < ActiveRecord::Migration
  def self.up
    add_column :personas, :apat, :string
    add_column :personas, :amat, :string
  end

  def self.down
    remove_column :personas, :amat
    remove_column :personas, :apat
  end
end
