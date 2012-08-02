class RemoveIdUsuarioToRequisicion < ActiveRecord::Migration
  def self.up
    remove_column :requisicions, :id_usuario
  end

  def self.down
    add_column :requisicions, :id_usuario, :integer
  end
end
