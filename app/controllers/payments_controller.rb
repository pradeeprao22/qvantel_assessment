class PaymentsController < ApplicationController 
    def create
        if params[:invoice_id]
           @payment = Payment.create(payment_params)
           render json: {"message": "payment created Succesfully"}
        else
           render json: {"message": "invoice is not present"} 
        end
    end
  
    private
  
    def payment_params
       params.require(:payment).permit(:date_payed, :status, :amount_payed, :customer_id, :invoice_id)
    end
end