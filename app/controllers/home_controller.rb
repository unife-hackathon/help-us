class HomeController < ApplicationController

  def index
    @organizations = Organization.includes(:needs).order('created_at desc').last(2)

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
                   :do_clustering => true,
                   :picture => "/system/map-pin.png", :width => 40, :height => 58,
                   :name => org.name, :description => org.description, :logo => "/system/map-pins.png", :detail => organization_path(org) }
      markers.last[:description] = render_to_string(:partial => "organizations/organization", :locals => { :organization => org}) if format.eql? 'html'
    end
    markers
  end

end
