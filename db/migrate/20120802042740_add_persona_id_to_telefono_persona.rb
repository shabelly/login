class AddPersonaIdToTelefonoPersona < ActiveRecord::Migration
  def self.up
    add_column :telefono_personas, :persona_id, :integer
  end

  def self.down
    remove_column :telefono_personas, :persona_id
  end
end
