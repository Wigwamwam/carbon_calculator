class CompaniesController < ApplicationController
  def show
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    @company.user = current_user
    if @company.save
      redirect_to company_path(@company)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])
    @company.update(company_params)
    redirect_to company_path(@company)
  end

  def destroy
    @company = Company.find(params[:id])
    if @company.destroy
      redirect_to user_path(current_user), status: :see_other
    else
      puts "Unable to delete"
    end
  end

  private

  def company_params
    params.require(:company).permit(:name, :industry, :company_house_number)
  end

end
