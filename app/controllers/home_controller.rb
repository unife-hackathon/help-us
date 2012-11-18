class HomeController < ApplicationController

  def index
    @markers = markers()
    @needs = Need.includes(:organization).order('created_at desc').last(5)
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
