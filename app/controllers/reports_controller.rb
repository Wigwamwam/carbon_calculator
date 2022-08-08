class ReportsController < ApplicationController
  def show
    @report = Report.find(params[:id])
  end

  def new
    @report = Report.new
  end

  def create
    @report = Report.new(report_params)
    @report.user = current_user
    if @report.save
      redirect_to report_path(@report)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @report = Report.find(params[:id])
  end

  def update
    @report = Report.find(params[:id])
    @report.update(report_params)
    redirect_to report_path(@report)
  end

  private

  def report_params
    params.require(:report).permit(:location_country, :location_county, :start_date, :end_date, :currency, :revenue,
                                    :employee_count, :eletricity_usage, :renewables, :owned_vehicles, :quantity_vehciles,
                                    :quantity_vehicles, :office_size, :building_heating_type, :building_heating_quantity,
                                    :total_expenses, :flight_expenses, :train_expenses, :phone_computer_expenses,
                                    :legal_consultancy_expenses)
  end
end
