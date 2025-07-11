class ProjectsController < ApplicationController
      def index
    @projects = Project.includes(:budget_category, :impact_metric)
  end
 
  def show
    @project = Project.find(params[:id])
  end
 
 def new
  @budget = Budget.find(params[:budget_id])
  @project = @budget.projects.new
end
def create
  @budget = Budget.find(params[:budget_id])
  @project = @budget.projects.new(project_params)
 
  if @project.save
    redirect_to budget_path(@budget), notice: "Project created successfully"
  else
    render :new
  end
end

 def update
  @budget = Budget.find(params[:budget_id])
  @project = @budget.projects.find(params[:id])
 
  if @project.update(project_params)
    redirect_to budget_path(@budget), notice: "Project updated successfully"
  else
    render :edit, status: :unprocessable_entity
  end
end
 
 private
 
def project_params
  params.require(:project).permit(:budget_id, :budget_category_id, :name, :description, :allocated_amount)
end
end
