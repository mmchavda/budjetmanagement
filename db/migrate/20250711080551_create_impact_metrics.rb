class CreateImpactMetrics < ActiveRecord::Migration[8.0]
  def change
    create_table :impact_metrics do |t|
      t.string :project
      t.string :estimated_beneficiaries
      t.string :timeline
      t.string :sustainability_score

      t.timestamps
    end
  end
end
