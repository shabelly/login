class CreateCheques < ActiveRecord::Migration
  def self.up
    create_table :cheques do |t|
      t.date :fecha
      t.string :numero
      t.string :banco

      t.timestamps
    end
  end

  def self.down
    drop_table :cheques
  end
end
