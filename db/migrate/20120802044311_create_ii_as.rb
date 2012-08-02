class CreateIiAs < ActiveRecord::Migration
  def self.up
    create_table :ii_as do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :ii_as
  end
end
