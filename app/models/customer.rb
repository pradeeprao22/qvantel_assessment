class Customer < ApplicationRecord
    has_many :payments
    has_many :invoices
end