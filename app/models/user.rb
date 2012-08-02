class User < ActiveRecord::Base
  #Gestiona la logica del authlogic !
  acts_as_authentic
  #
  #attr_accessible :username, :email, :password
  belongs_to :cargo
  
  has_many :entrada_de_materials
  
  belongs_to :persona
  
  #Inicio N..N actividad
  has_many :a_us
  has_many :actividads, :through => :a_us
  
  has_many :requisicions
  
  has_many :salida_materials
  has_many :salida_materials  
end
