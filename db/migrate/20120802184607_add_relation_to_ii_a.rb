class AddRelationToIiA < ActiveRecord::Migration
  def self.up
    add_column :ii_as, :instancia_item_id, :integer
    add_column :ii_as, :actividad_id, :integer
  end

  def self.down
    remove_column :ii_as, :actividad_id
    remove_column :ii_as, :instancia_item_id
  end
end
