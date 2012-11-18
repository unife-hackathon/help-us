class Organization < ActiveRecord::Base
  attr_accessible :description, :logo, :name, :latitude, :longitude, :gmaps, :marker_path

  has_many :needs
  #has_many :users

  acts_as_gmappable :process_geocoding => false

  def gmaps4rails_address
  #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
    "ciao"#"#{self.street}, #{self.city}, #{self.country}"
  end


  def self.markers
    markers = []
    Organization.all.each do |org|
      markers << {:lat => org.latitude, :lng => org.longitude, :picture => org.marker_path, :width => 48, :height => 48}
    end
    markers.to_json
  end

end
