class FormaPago < ActiveRecord::Base
#inicio N..N orden_de_compra
  has_many :fp_odcs
  has_many :orden_de_compras, :through =>  :fp_odcs
  
#efectivo
  has_many :efectivos
#cheque
  has_many :cheques  
end
