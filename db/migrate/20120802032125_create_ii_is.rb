class CreateIiIs < ActiveRecord::Migration
  def self.up
    create_table :ii_is do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :ii_is
  end
end
