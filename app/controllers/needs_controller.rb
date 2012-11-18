class NeedsController < ApplicationController

  def index
    @organization = Organization.find(params[:organization_id])
    @needs = @organization.needs
  end

  def show
    @need = Need.find(params[:id])
  end

end