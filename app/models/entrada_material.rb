class EntradaMaterial < ActiveRecord::Base
  belongs_to :orden_de_compra
  #inicio N..N item
  has_many :em_is
  has_many :items, :through => :em_is
  #fin N..N item
end
