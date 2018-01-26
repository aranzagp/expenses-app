
class StaticPagesController < ApplicationController

  def home
    @income_col = Income.group('CAST(strftime("%m", date) AS INTEGER)').sum(:amount)
    @expense_col = Expense.group('CAST(strftime("%m", date) AS INTEGER)').sum(:amount)
  end
end
