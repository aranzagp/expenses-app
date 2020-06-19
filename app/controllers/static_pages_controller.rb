# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def home
    @income_col = Income.group('(EXTRACT(MONTH FROM created_at))::integer').sum(:amount)
    @expense_col = Expense.group('(EXTRACT(MONTH FROM created_at))::integer').sum(:amount)
  end
end
