class AddBudgetIdToBudgetCategories < ActiveRecord::Migration[8.0]
  def change
    add_reference :budget_categories, :budget, null: false, foreign_key: true
  end
end
