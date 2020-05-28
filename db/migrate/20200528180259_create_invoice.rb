class CreateInvoice < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.date :date_created
      t.boolean :status
      t.float :total
    end
  end
end
