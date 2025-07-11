class Project < ApplicationRecord
  belongs_to :budget
  belongs_to :budget_category
  has_one :impact_metric

  validates :name, :description, presence: true
  validates :allocated_amount, numericality: { greater_than_or_equal_to: 0 }

  validate :validate_category_limit

  def validate_category_limit
    return unless budget_category && budget

    category_projects = budget.projects.where(budget_category_id: budget_category.id)
    total_allocated = category_projects.sum(:allocated_amount)
    #limit = budget.total_amount * (budget_category.spending_limit_percentage / 100.0)
    limit = budget.total_amount.to_f * (budget_category.spending_limit_percentage.to_f / 100.0)

    if (total_allocated + allocated_amount) > limit
      errors.add(:allocated_amount, "exceeds the category spending limit of #{limit}")
    end
  end
end
