class Income < ApplicationRecord
	validates :amount, presence: true
end
