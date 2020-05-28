require 'rails_helper'

RSpec.describe Customer, type: :model do
   context 'validation test' do
      it 'ensure addres presence' do 
        customer = Customer.new(address: 'test', email: 'some@test.com', date_register: '2020-05-28').save
        expect(customer).to eq(true)
      end
   end
end
