class SalidaMaterial < ActiveRecord::Base
  has_many :usuarios
  
  #Inicio N..N item
  has_many :i_sms
  has_many :items, :through => :i_sms
end
