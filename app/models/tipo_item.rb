class TipoItem < ActiveRecord::Base
  has_many :item_tipo_items
  has_many :items, :through =>:item_tipo_items 
  
  has_many :modelos
end
