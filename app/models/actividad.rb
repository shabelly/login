class Actividad < ActiveRecord::Base
  has_many :ii_as
  has_many :instancia_items, :through => :ii_as

  has_many :a_us
  has_many :users, :through =>:a_us
end
