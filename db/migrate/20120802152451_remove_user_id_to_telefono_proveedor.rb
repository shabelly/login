class RemoveUserIdToTelefonoProveedor < ActiveRecord::Migration
  def self.up
    remove_column :telefono_proveedors, :user_id
  end

  def self.down
    add_column :telefono_proveedors, :user_id, :integer
  end
end
