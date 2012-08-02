class RemoveNumOtToEntradaMaterial < ActiveRecord::Migration
  def self.up
    remove_column :entrada_materials, :num_ot
  end

  def self.down
    add_column :entrada_materials, :num_ot, :integer
  end
end
