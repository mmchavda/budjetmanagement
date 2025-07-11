class BudgetPhasesController < ApplicationController
   def new
  @budget = Budget.find(params[:budget_id])
  @budget_phase = @budget.budget_phases.new
end

  def create
  @budget = Budget.find(params[:budget_id])
  @budget_phase = @budget.budget_phases.new(phase_params)
 
  if @budget_phase.save
    redirect_to budget_path(@budget), notice: "Budget phase created successfully"
  else
    render :new
  end
end
 
private
 
def phase_params
  params.require(:budget_phase).permit(:name, :voting_rules, :participant_eligibility, :start_date, :end_date)
end
end
