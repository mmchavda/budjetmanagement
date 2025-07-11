class BudgetCategory < ApplicationRecord
  belongs_to :budget
  has_many :projects, dependent: :destroy

  validates :name, presence: true
  validates :spending_limit_percentage, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
end
