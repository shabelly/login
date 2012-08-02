class RemoveUsuarioIdToRequisicion < ActiveRecord::Migration
  def self.up
    remove_column :requisicions, :usuario_id
  end

  def self.down
    add_column :requisicions, :usuario_id, :integer
  end
end
