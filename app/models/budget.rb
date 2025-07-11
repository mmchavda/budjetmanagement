class Budget < ApplicationRecord
  has_many :budget_categories
  has_many :projects
  has_many :budget_phases

  validates :name, presence: true
  validates :total_amount, numericality: { greater_than_or_equal_to: 0 }
end
