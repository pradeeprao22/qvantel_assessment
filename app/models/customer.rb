class Customer < ApplicationRecord
    has_many :payments, through: :invoices
    has_many :invoices
end