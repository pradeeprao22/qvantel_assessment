require 'rails_helper'

RSpec.describe CustomersController, type: :controller do
        describe "GET index" do 
            it "assigns @customers" do 
                customer = Customer.create(address: 'test', email: 'some@test.com', date_register: '2020-05-28')
                get :index 
                expect(assigns(:customers)).to eq([customer]) 
            end 
        end

end
