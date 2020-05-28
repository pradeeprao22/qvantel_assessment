class CustomersController < ApplicationController
    
    def index
        @customers = Customer.all
        render json: @customers, include: {invoices: {include: :payments}} 
    end

    def create
      @customer = Customer.create(customer_params)
    end

    private

    def customer_params
      params.require(:customer).permit(:address, :email, :date_register)
    end
end