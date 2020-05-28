class CreateCustomer < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :address
      t.string :email
      t.date :date_register
      t.timestamp      
    end
  end
end
