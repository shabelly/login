class AU < ActiveRecord::Base
  belongs_to :actividad
  belongs_to :user
end
