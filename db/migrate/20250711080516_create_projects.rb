class CreateProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :projects do |t|
      t.string :budget
      t.string :budget_category
      t.string :name
      t.string :description
      t.string :allocated_amount15
      t.string :allocated_amount2

      t.timestamps
    end
  end
end
