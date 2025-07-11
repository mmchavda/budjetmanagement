class CreateBudgetPhases < ActiveRecord::Migration[8.0]
  def change
    create_table :budget_phases do |t|
      t.string :budget
      t.string :name
      t.string :voting_rules
      t.string :participant_eligibility
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
