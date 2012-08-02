class Empresa < ActiveRecord::Base
  has_many :proveedors
  has_many :clientes
  has_many :telefono_empresas
  
end
