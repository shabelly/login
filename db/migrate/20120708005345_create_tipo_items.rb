class CreateTipoItems < ActiveRecord::Migration
  def self.up
    create_table :tipo_items do |t|
      t.string :codigo
      t.string :nombre

      t.timestamps
    end
  end

  def self.down
    drop_table :tipo_items
  end
end
