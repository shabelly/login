class OrdenDeCompra < ActiveRecord::Base
has_many :fp_odcs
has_many :forma_pagos, :through => :fp_odcs
#Inicio N..N requisicion
has_many :odc_rs
has_many :requisicions, :through => :odc_rs
#Fin N..N requisicion
#Inicio N..N item
has_many :odc_is
has_many :items, :through => :odc_is
#Fin N..N item
#Inicio 1..N orden_de_compra
has_many :orden_de_compras
#Fin 1..N orden_de_compra
has_many :entrada_materials 
end
