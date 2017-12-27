class StaticPagesController < ApplicationController

  def home
  	#@incomes= Income.where(:date => Time.now.strftime('%Y-%m-%d') ).sum(:amount)
  	@incomes = Income.sum(:amount)
  	@expenses = Expense.sum(:amount)
  	#@expenses= Expense.where(:date => Time.now.strftime('%Y-%m-%d') ).sum(:amount)
   end

  def expenses
  end

  def income
  end

  def balance
  end
end
