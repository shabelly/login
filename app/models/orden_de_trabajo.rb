class OrdenDeTrabajo < ActiveRecord::Base
  has_many :requisicions
  has_many :empresas
  has_many :salida_materials
end
