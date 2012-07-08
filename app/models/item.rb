class Item < ActiveRecord::Base
  has_many :item_tipo_items
  has_many :tipo_Items, :through => :item_tipo_items
end
