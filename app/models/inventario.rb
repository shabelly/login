class Inventario < ActiveRecord::Base
  has_many :ii_is
  has_many :instancia_items, :through =>:ii_is
end
