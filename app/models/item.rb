class Item < ActiveRecord::Base
  belongs_to :proveedors
  belongs_to :unidad
  belongs_to :seccion
  
  #Inicio N..N tipo_item
  has_many :item_tipo_items
  has_many :tipo_items, :through => :item_tipo_items
  #Fin N..N tipo_item
  
  #Inicio N..N requisicion
  has_many :r_is
  has_many :requisicions, :through => :r_is
  #Fin N..N requisicion
  
  #Inicio N..N orden_de_compra
  has_many :odc_is
  has_many :orden_de_compras, :through => :odc_is
  #Fin N..N orden_de_compra
  
  #Inicio N..N entrada_material
  has_many :em_is
  has_many :entrada_materials, :through => :em_is
  #Fin N..N entrada_material

  #Inicio 1..N instancia_item
  has_many :instancia_items
  #Fin 1..N instancia_item
  
  #Inicio N..N salida_material
  has_many :i_sms
  has_many :salida_materials, :through => :i_sms
end
