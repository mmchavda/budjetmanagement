class BudgetCategoriesController < ApplicationController
    def create
    @category = BudgetCategory.new(category_params)
    if @category.save
      redirect_to @category.budget
    else
      render :new
    end
  end
 
  private
 
  def category_params
    params.require(:budget_category).permit(:budget_id, :name, :spending_limit_percentage)
  end
end
