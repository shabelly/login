class AddUserIdToEntradaMaterial < ActiveRecord::Migration
  def self.up
    add_column :entrada_materials, :user_id, :integer
    add_column :entrada_materials, :orden_de_trabajo_id, :integer
  end

  def self.down
    remove_column :entrada_materials, :orden_de_trabajo_id
    remove_column :entrada_materials, :user_id
  end
end
