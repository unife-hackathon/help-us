class NeedsController < ApplicationController

  def index
    @organization = Organization.find(params[:organization_id])
    @needs = @organization.needs
  end

  def show
    @need = Need.find(params[:id])
  end

  def edit
    @need = Need.find params[:id]
    @need.attachments.build
  end

  def update
    @need = Need.find params[:id]
    if @need.update_attributes(params[:need])
      redirect_to organization_path(@need.organization), :notice => "Hai aggiunto un immagine!"
    else
      redirect_to root_path, :error => "Hai sbagliato qualcosa"
    end
  end

end