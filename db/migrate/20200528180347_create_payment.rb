class CreatePayment < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.date :date_payed
      t.boolean :status
      t.float :amount_payed
      # add_reference :payments, :customer, foreign_key: true
      # add_reference :payments, :invoice, foreign_key: true
    end
  end
end
