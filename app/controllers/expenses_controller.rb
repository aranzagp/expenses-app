class ExpensesController < ApplicationController

	def show
    @expense = Expense.find(params[:id])

  end

  def new
  	@expense = Expense.new
    @value = @expense
    @expense.date = Time.now.strftime('%m/%d/%y')
  end

  def create
    @expense = Expense.new(expense_params)    # Not the final implementation!
    @value = @expense
    if @expense.save
    	flash[:success] = "Expense added!"
      redirect_to @expense
      #redirect_to expense_url(@expense)
    else
      render 'new'
    end
  end

  def index
  	@expenses = Expense.all.order('date DESC')
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

  def destroy
    if Expense.destroy(params[:id])
      logger.debug "Expense destroyed #{params[:id]}"
      respond_to do |format|
        format.json do
          render json: {
            status: 'success'
          }.to_json
        end
      end
    end

  end

  private

  def expense_params
      params.require(:expense).permit(:amount, :date, :place,
                                   :category)
   end

end
