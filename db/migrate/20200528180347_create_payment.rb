class CreatePayment < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.date :date_payed
      t.boolean :status
      t.float :amount_payed
    end
  end
end
