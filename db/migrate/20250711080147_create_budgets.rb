class CreateBudgets < ActiveRecord::Migration[8.0]
  def change
    create_table :budgets do |t|
      t.string :name
      t.string :total_amount15
      t.string :total_amount2
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
