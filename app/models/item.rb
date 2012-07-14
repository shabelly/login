class Item < ActiveRecord::Base
  belongs_to :proveedors
  belongs_to :unidad
  belongs_to :seccion
  has_many :item_tipo_items
  has_many :tipo_items, :through => :item_tipo_items
  
end
