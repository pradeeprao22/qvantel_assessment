class InvoicesController < ApplicationController 
    def create
        if params[:customer_id]
           @invoice = Invoice.create(invoice_params)
           render json: {"message": "Invoice created Succesfully"}
        else
           render json: {"message": "customer is not present"} 
        end
    end
  
      private
  
      def invoice_params
        params.permit(:date_created, :status, :total, :customer_id)
      end
end