class RemoveOredenDeTrabajoIdToRequisicion < ActiveRecord::Migration
  def self.up
    remove_column :requisicions, :oreden_de_trabajo_id
  end

  def self.down
    add_column :requisicions, :oreden_de_trabajo_id, :integer
  end
end
