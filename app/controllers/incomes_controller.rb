# frozen_string_literal: true

class IncomesController < ApplicationController
  def show
    @income = Income.find(params[:id])
  end

  def new
    @income = Income.new
    @value = @income
  end

  def create
    @income = Income.new(income_params) # Not the final implementation!
    @value = @income
    if @income.save
      flash[:success] = 'Income added!'
      redirect_to @income
      # redirect_to expense_url(@income)
    else
      render 'new'
    end
  end

  def index
    @incomes = Income.all.order('date DESC')
  end

  def destroy
    return unless Income.destroy(params[:id])

    logger.debug "Income destroyed #{params[:id]}"
    respond_to do |format|
      format.json do
        render json: {
          status: 'success'
        }.to_json
      end
    end
  end

  def edit
    @income = Income.find(params[:id])
    @value = @income
  end

  def update
    @income = Income.find(params[:id])
    @value = @income
    if @income.update_attributes(income_params)
      flash[:success] = 'Income updated'
      redirect_to @income
    else
      render 'edit'
    end
  end

  private

  def income_params
    params.require(:income).permit(:amount, :date,
                                   :category)
  end
end
