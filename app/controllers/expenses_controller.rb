class ExpensesController < ApplicationController

	def show
    @expense = Expense.find(params[:id])

  end

  def new
  	@expense = Expense.new
  end

  def create
    @expense = Expense.new(expense_params)    # Not the final implementation!
    if @expense.save
    	flash[:success] = "Expense added!"
      redirect_to @expense
      #redirect_to expense_url(@expense)
    else
      render 'new'
    end
  end

  def index
  	@expenses = Expense.all
  end

  def edit
    @expense = Expense.find(params[:id])
  end

  def update
    @expense = Expense.find(params[:id])
    if @expense.update_attributes(expense_params)
      flash[:success] = "Expense updated"
      redirect_to @expense
    else
      render 'edit'
    end
  end

  private

  def expense_params
      params.require(:expense).permit(:amount, :date, :place,
                                   :category)
   end

end
