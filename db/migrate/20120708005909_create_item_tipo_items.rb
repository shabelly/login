class CreateItemTipoItems < ActiveRecord::Migration
  def self.up
    create_table :item_tipo_items do |t|
      t.string :item_codigo
      t.string :tipoItem_codigo

      t.timestamps
    end
  end

  def self.down
    drop_table :item_tipo_items
  end
end
