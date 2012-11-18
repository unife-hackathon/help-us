class HomeController < ApplicationController

  def index
    @organizations_gmaps = Organization.all.to_gmaps4rails
  end

end
