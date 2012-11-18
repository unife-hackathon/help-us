class HomeController < ApplicationController

  def index
    @markers = markers
    @needs = Need.includes(:organization).order('created_at desc').last(5)
  end


  private

  def markers
    markers = []
    Organization.all.each do |org|
      @needs = org.needs
      markers << {:lat => org.latitude, :lng => org.longitude,
                  :picture => org.marker_path, :width => 48, :height => 48,
                  :description => render_to_string("popup_content", :layout => false)}
    end
    markers.to_json
  end

end
