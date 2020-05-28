require 'rails_helper'

RSpec.describe Payment, type: :model do
  context 'validation test' do
    it 'ensure customer and invoice presence for payment creation' do 
      payment = Payment.new(date_payed: '2020-05-28', status: 'true', amount_payed: '1000.10', customer_id: '1', invoice_id: '1').save
      expect(payment).to eq(false)
    end
   end
end
