class CreateISms < ActiveRecord::Migration
  def self.up
    create_table :i_sms do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :i_sms
  end
end
