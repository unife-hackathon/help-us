class HomeController < ApplicationController

  def index
    @json = Organization.all.to_gmaps4rails
  end

end
