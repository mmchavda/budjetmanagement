class Budget < ApplicationRecord
   has_many :budget_categories, dependent: :destroy
  has_many :budget_phases, dependent: :destroy
  has_many :projects, dependent: :destroy

  validates :name, presence: true
  validates :total_amount, numericality: { greater_than_or_equal_to: 0 }
   

end
