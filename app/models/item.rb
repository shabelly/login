class Item < ActiveRecord::Base
  has_many :proveedors
  belongs_to :unidad
  has_many :item_tipo_items
  has_many :tipo_items, :through => :item_tipo_items
  
end
