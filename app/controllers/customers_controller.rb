class CustomersController < ApplicationController
  
  skip_before_action :verify_authenticity_token

    def index
        @customers = Customer.all
        render json: @customers, include: {invoices: {include: :payment}} 
    end

    def create
      byebug
      @customer = Customer.new(customer_params)
      if @customer.save!
        render json: {"message": "customer has been created"} 
      else 
        render json: {"error": "something wrong happened"} 
      end
    end

    private

    def customer_params
      params.permit(:address, :email, :date_register)
    end
end