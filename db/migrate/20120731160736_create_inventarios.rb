class CreateInventarios < ActiveRecord::Migration
  def self.up
    create_table :inventarios do |t|
      t.string :nombre

      t.timestamps
    end
  end

  def self.down
    drop_table :inventarios
  end
end
