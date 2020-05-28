class Customer < ApplicationRecord
    has_many :payments
    has_many :invoices
    validates :address, presence: true
    validates :email, presence: true
    validates :date_register, presence: true
end