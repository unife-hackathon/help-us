class OrganizationsController < ApplicationController

  def index
    @organizations = Organization.all
  end

  def show
    @organization = Organization.find params[:id]
    render :partial => "_organization" if params[:no_layout].present? #TODO: a che cacchio serve questo?
  end

end
