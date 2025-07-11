class CreateProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :projects do |t|
      t.references :budget, null: false, foreign_key: true
      t.references :budget_category, null: false, foreign_key: true
      t.string :name, null: false
      t.text :description
      t.decimal :allocated_amount, precision: 15, scale: 2, default: 0.0

      t.timestamps

    end
  end
end
