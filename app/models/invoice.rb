class Invoice < ApplicationRecord
    belongs_to :customer
    has_one :payment
    validates :customer_id, presence: true
    validates :status, presence: true
    validates :date_created, presence: true
    validates :total, presence: true, numericality: {only_float: true} 
end