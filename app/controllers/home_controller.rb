class HomeController < ApplicationController

  def index
    @markers = Organization.markers
  end

end
