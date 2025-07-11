class BudgetPhasesController < ApplicationController
      def create
    @phase = BudgetPhase.new(phase_params)
    if @phase.save
      redirect_to @phase.budget
    else
      render :new
    end
  end
 
  private
 
  def phase_params
    params.require(:budget_phase).permit(:budget_id, :name, :voting_rules, :participant_eligibility, :start_date, :end_date)
  end
end
