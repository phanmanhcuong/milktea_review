class ReportsController < ApplicationController
  before_action :authenticate_user!

  def create
    report = Report.new
    report.update_attributes report_params
  end

  private
  def report_params
    params.require(:report).permit :user_id, :review_id, :reason
  end
end
