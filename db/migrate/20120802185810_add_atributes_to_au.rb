class AddAtributesToAu < ActiveRecord::Migration
  def self.up
    add_column :a_us, :user_id, :integer
    add_column :a_us, :actividad_id, :integer
  end

  def self.down
    remove_column :a_us, :actividad_id
    remove_column :a_us, :user_id
  end
end
