class RenameUserToUsuario < ActiveRecord::Migration
  def self.up
    rename_table :user, :usuario
  end

  def self.down
    rename_table :usuario, :user
  end
end
