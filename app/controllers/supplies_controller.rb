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
      graph = Koala::Facebook::API.new(current_user.fb_token)
      graph.put_wall_post("Ho appena donato (qualcosa) usando Aiutiamoci!")
      flash[:notice] = "Grazie per il tuo contributo!"
      redirect_to organization_path(@need.organization)
    end
  end

end