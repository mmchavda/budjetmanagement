class ImpactMetricsController < ApplicationController
      def create
    @metric = ImpactMetric.new(metric_params)
    if @metric.save
      redirect_to @metric.project
    else
      render :new
    end
  end
 
  private
 
  def metric_params
    params.require(:impact_metric).permit(:project_id, :estimated_beneficiaries, :timeline, :sustainability_score)
  end
end
