class Invoice < ApplicationRecord
    belongs_to :customer
    has_one :payment
end