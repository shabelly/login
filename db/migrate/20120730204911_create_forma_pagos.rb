class CreateFormaPagos < ActiveRecord::Migration
  def self.up
    create_table :forma_pagos do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :forma_pagos
  end
end
