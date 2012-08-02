class CreateInstanciaItems < ActiveRecord::Migration
  def self.up
    create_table :instancia_items do |t|
      t.integer :id_item
      t.integer :corr

      t.timestamps
    end
  end

  def self.down
    drop_table :instancia_items
  end
end
