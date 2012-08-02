class AddOrdenDeTrabajoIdToRequisicion < ActiveRecord::Migration
  def self.up
    add_column :requisicions, :orden_de_trabajo_id, :integer
  end

  def self.down
    remove_column :requisicions, :orden_de_trabajo_id
  end
end
