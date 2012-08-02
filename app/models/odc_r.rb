class OdcR < ActiveRecord::Base
  belongs_to :requisicion
  belongs_to :orden_de_compra
  
end
