class BudgetCategoriesController < ApplicationController
   def new
    @budget = Budget.find(params[:budget_id])
    @budget_category = @budget.budget_categories.new
  end
 
 def create
  @budget = Budget.find(params[:budget_id])
  @budget_category = @budget.budget_categories.new(category_params)
 
  if @budget_category.save
    redirect_to budget_path(@budget), notice: "Category created successfully"
  else
    render :new
  end
end
 
  private
 
 def category_params
    params.require(:budget_category).permit(:name, :spending_limit_percentage)
  end
end
