class CreateEmIs < ActiveRecord::Migration
  def self.up
    create_table :em_is do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :em_is
  end
end
