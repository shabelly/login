class RemoveUserToPersona < ActiveRecord::Migration
  def self.up
    remove_column :personas, :user
    remove_column :personas, :pass
  end

  def self.down
    add_column :personas, :pass, :string
    add_column :personas, :user, :string
  end
end
