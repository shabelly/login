class CreateFpOdcs < ActiveRecord::Migration
  def self.up
    create_table :fp_odcs do |t|
      t.date :fecha

      t.timestamps
    end
  end

  def self.down
    drop_table :fp_odcs
  end
end
