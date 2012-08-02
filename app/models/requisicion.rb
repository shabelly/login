class Requisicion < ActiveRecord::Base
  #Inicio N..N items
  has_many :r_is
  has_many :items, :through => :r_is
  #Fin N..N items
  #Inicio N..N orden_de_compra
  has_many :odc_rs
  has_many :orden_de_compras, :through => :odc_rs
  #Fin N..N orden_de_compra
  
  has_many :orden_de_trabajos
end
