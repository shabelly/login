class AddUsuarioIdToRequisicion < ActiveRecord::Migration
  def self.up
    add_column :requisicions, :usuario_id, :integer
  end

  def self.down
    remove_column :requisicions, :usuario_id
  end
end
