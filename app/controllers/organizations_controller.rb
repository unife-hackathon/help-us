class OrganizationsController < ApplicationController

  def index
    @organizations = Organization.all
  end

  def show
    @organization = Organization.find params[:id]
    render :partial => "_organization" if params[:no_layout].present?
  end

end
