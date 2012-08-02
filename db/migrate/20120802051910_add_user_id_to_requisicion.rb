class AddUserIdToRequisicion < ActiveRecord::Migration
  def self.up
    add_column :requisicions, :user_id, :integer
  end

  def self.down
    remove_column :requisicions, :user_id
  end
end
