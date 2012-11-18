class SuppliesController < ApplicationController

  def index
    @need = Need.find(params[:need_id])
    @supplies = @need.supplies
  end

  def new
    @need = Need.find(params[:need_id])
    @supply = @need.supplies.build(:user => current_user)
    @is_modal = params[:no_layout].present?
    render :layout => (not @is_modal)

  end

  def create
    @need = Need.find(params[:need_id])
    @supply = @need.supplies.build(params[:supply])
    @supply.user = current_user
    if @supply.save

      if current_user.provider.eql? "facebook"
        begin
          graph = Koala::Facebook::API.new(current_user.fb_token)
          graph.put_wall_post("Ho appena donato per la campagna '#{@need.need_type.name}' usando Aiutiamoci! #{@need.need_type.description}")
        end
      end

      flash[:notice] = "Grazie per il tuo contributo!"
      redirect_to organization_path(@need.organization)
    end
  end

end