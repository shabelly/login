class RI < ActiveRecord::Base
  belongs_to :requisicion
  belongs_to :item
end
