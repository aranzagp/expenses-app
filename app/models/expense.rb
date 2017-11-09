class Expense < ApplicationRecord
	validates :amount, presence: true
end
