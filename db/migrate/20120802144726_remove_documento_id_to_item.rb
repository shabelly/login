class RemoveDocumentoIdToItem < ActiveRecord::Migration
  def self.up
    remove_column :items, :documento_id
  end

  def self.down
    add_column :items, :documento_id, :integer
  end
end
