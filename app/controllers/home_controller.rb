class HomeController < ApplicationController

  def index
    @markers = Organization.markers
    @needs = Need.includes(:organization).order('created_at desc').last(5)
  end

end
