class CreateBudgets < ActiveRecord::Migration[8.0]
  def change
    create_table :budgets do |t|
      t.string :name, null: false
      t.decimal :total_amount, precision: 15, scale: 2, default: 0.0
      t.date :start_date
      t.date :end_date
 
      t.timestamps
    end
  end
end
