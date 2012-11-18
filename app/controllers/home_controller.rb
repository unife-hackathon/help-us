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

  def markers
    Organization.all.to_gmaps4rails do |org, marker|
      marker.infowindow render_to_string(:partial => "organizations/organization", :locals => { :organization => org})
      marker.picture({
                      :picture => org.marker_path,
                      :width   => 48,
                      :height  => 48
                     })
    end
  end

end
