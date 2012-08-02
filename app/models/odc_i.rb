class OdcI < ActiveRecord::Base
  belongs_to :orden_de_compra
  belongs_to :item
end
