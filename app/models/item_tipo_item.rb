class ItemTipoItem < ActiveRecord::Base
  belongs_to :item
  belongs_to :tipo_Item
end
