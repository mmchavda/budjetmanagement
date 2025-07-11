class BudgetPhase < ApplicationRecord
  belongs_to :budget

  validates :name, :start_date, :end_date, presence: true
  validates :voting_rules, :participant_eligibility, presence: true

  validate :valid_phase_timing

  def valid_phase_timing
    if start_date >= end_date
      errors.add(:end_date, "must be after start date")
    end
  end
end
