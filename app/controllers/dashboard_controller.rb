class DashboardController < ApplicationController
  def index
    @sales_data = SalesRecord.group_by_month(:date, last: 6).sum(:amount)
    respond_to do |format|
      format.html
      format.json { 
        render json: {
          sales: @sales_data
        }
      }
    end
  end
end
