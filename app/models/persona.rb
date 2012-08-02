class Persona < ActiveRecord::Base
  belongs_to :proveedors
  has_many :telefono_personas
end
