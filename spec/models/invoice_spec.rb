require 'rails_helper'

RSpec.describe Invoice, type: :model do
  context 'validation test' do
  it 'ensure customer presence for invoice creation' do 
    invoice = Invoice.new(date_created: '2020-05-28', status: 'true', total: '1000.10', customer_id: '1').save
    expect(invoice).to eq(false)
  end
 end
end
