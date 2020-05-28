class Payment < ApplicationRecord
    belongs_to :invoice
    belongs_to :customer
    validates :customer_id, presence: true, numericality: {only_integer: true} 
    validates :invoice_id, presence: true, numericality: {only_integer: true} 
    validates :status, presence: true
    validates :date_payed, presence: true
    validates :amount_payed, presence: true, numericality: {only_float: true} 
end