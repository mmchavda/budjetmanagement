class CreateBudgetCategories < ActiveRecord::Migration[8.0]
  def change
    create_table :budget_categories do |t|
      t.string :budget
      t.string :name
      t.string :spending_limit_percentage

      t.timestamps
    end
  end
end
