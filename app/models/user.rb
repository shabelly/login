class User < ActiveRecord::Base
  #Gestiona la logica del authlogic !
  acts_as_authentic
  #
  #attr_accessible :username, :email, :password
  belongs_to :cargo
end
