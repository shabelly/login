class CreateOdcIs < ActiveRecord::Migration
  def self.up
    create_table :odc_is do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :odc_is
  end
end
