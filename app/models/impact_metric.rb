class ImpactMetric < ApplicationRecord

  belongs_to :project

  validates :estimated_beneficiaries, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :timeline, :sustainability_score, presence: true
end
