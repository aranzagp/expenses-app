# frozen_string_literal: true

class Expense < ApplicationRecord
  validates :amount, presence: true
end
