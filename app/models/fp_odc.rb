class FpOdc < ActiveRecord::Base
  belongs_to :forma_pago
  belongs_to :orden_de_compra
end
