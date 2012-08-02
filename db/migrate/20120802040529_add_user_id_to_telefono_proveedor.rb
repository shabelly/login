class AddUserIdToTelefonoProveedor < ActiveRecord::Migration
  def self.up
    add_column :telefono_proveedors, :user_id, :integer
  end

  def self.down
    remove_column :telefono_proveedors, :user_id
  end
end
