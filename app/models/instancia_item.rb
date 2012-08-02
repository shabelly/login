class InstanciaItem < ActiveRecord::Base
# Inicio N..N inventario
  has_many :ii_is
  has_many :inventarios, :through => :ii_is

#Inicio N..N Actividad
  has_many :ii_as
  has_many :actividads, :through => :ii_as  
end
