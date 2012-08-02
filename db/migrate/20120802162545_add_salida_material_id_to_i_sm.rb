class AddSalidaMaterialIdToISm < ActiveRecord::Migration
  def self.up
    add_column :i_sms, :salida_material_id, :integer
    add_column :i_sms, :item_id, :integer
  end

  def self.down
    remove_column :i_sms, :item_id
    remove_column :i_sms, :salida_material_id
  end
end
