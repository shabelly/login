class CreateICs < ActiveRecord::Migration
  def self.up
    create_table :i_cs do |t|
      t.integer :cliente_id
      t.integer :item_id

      t.timestamps
    end
  end

  def self.down
    drop_table :i_cs
  end
end
