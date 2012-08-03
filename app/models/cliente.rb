class Cliente < ActiveRecord::Base
  has_many :orden_de_trabajos
end
