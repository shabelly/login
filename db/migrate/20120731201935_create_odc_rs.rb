class CreateOdcRs < ActiveRecord::Migration
  def self.up
    create_table :odc_rs do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :odc_rs
  end
end
