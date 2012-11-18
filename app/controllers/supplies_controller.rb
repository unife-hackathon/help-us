class SuppliesController < ApplicationController

  def index
    @need = Need.find(params[:need_id])
    @supplies = @need.supplies
  end

  def new
    @need = Need.find(params[:need_id])
    @supply = @need.supplies.build(:user => current_user)
  end

  def create
    @need = Need.find(params[:need_id])
    @supply = @need.supplies.build(params[:supply])
    @supply.user = current_user
    if @supply.save
      redirect_to organization_needs_path(@need.organization)
    end
  end

end