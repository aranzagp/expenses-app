class IncomesController < ApplicationController

	def show
    @income = Income.find(params[:id])
  end

  def new
  	@income = Income.new
  	@value = @income
  end

  def create
    @income = Income.new(income_params)    # Not the final implementation!
    @value = @income
    if @income.save
    	flash[:success] = "Income added!"
      redirect_to @income
      #redirect_to expense_url(@income)
    else
      render 'new'
    end
  end

  private

  def income_params
    params.require(:income).permit(:amount, :date, :place,
                                   :category)
  end

end
