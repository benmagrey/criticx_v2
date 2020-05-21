class CompaniesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @companies = Company.all
    render json: @companies 
  end
  def show
    @companies = Company.find(params[:id])
    render json: @companies
  end

  def create
    @companies = Company.new(companies_params)
    if @companies.save
      render json: @companies
    else
      render json: @companies.errors
    end
  end
    
  private
  def companies_params
    params.require(:company).permit( :name, :description, :start_date, :country)
  end
end
