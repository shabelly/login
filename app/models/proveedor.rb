class Proveedor < ActiveRecord::Base

  has_many :items
  has_many :orden_de_compras
  has_many :instancia_items
  has_many :personas
  has_many :telefono_proveedors
end
