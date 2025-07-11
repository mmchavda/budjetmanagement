class AddBudgetToBudgetPhases < ActiveRecord::Migration[8.0]
  def change
    add_reference :budget_phases, :budget, null: false, foreign_key: true
  end
end
