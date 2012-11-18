class HomeController < ApplicationController

  def index
    @organizations_gmaps = Organization.all.to_gmaps4rails do |organization, marker|
      marker.infowindow render_to_string(:partial => "organizations/organization", :locals => { :organization => organization})
=begin
      marker.picture({
                      :picture => "http://www.blankdots.com/img/github-32x32.png",
                      :width   => 32,
                      :height  => 32
                     })
=end
      marker.title   "i'm the title"
      marker.sidebar "i'm the sidebar"
      marker.json({ :id => organization.id, :foo => "bar" })
    end
  end

end
