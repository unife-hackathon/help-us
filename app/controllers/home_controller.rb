class HomeController < ApplicationController

  def index
    #@markers = markers
    @needs = Need.includes(:organization).order('created_at desc').last(5)
    respond_to do |format|
      format.html { @markers = markers('html').to_json}
      format.json { render json: markers('json').to_json   }
    end
  end


  private

  def markers(format)
    markers = []
    Organization.all.each do |org|
      @needs = org.needs
      markers << { :lat => org.latitude, :lng => org.longitude,
                   :picture => org.marker_path, :width => 48, :height => 48 }
      markers.last[:description] = render_to_string("popup_content", :layout => false) if format.eql? "html"
    end
    markers
  end

end
