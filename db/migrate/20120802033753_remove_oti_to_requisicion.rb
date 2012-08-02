class RemoveOtiToRequisicion < ActiveRecord::Migration
  def self.up
    remove_column :requisicions, :oti
  end

  def self.down
    add_column :requisicions, :oti, :integer
  end
end
