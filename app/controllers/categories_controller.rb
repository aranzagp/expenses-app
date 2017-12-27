class CategoriesController < ApplicationController
  def new
  	@category = Category.new
    @value = @category   
  end

  def index
  	@categories = Category.all
  end

  def show
    @category = Category.find(params[:id])

  end

  def create
    @category = Category.new(category_params)    # Not the final implementation!
    @value = @category
    if @category.save
    	flash[:success] = "Category added!"
      redirect_to @category
      #redirect_to expense_url(@category)
    else
      render 'new'
    end
  end

  private

  def category_params
      params.require(:category).permit(:icon, :name)
   end

end
