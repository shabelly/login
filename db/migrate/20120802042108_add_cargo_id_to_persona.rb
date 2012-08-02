class AddCargoIdToPersona < ActiveRecord::Migration
  def self.up
    add_column :personas, :cargo_id, :integer
  end

  def self.down
    remove_column :personas, :cargo_id
  end
end
