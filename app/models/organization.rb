class Organization < ActiveRecord::Base
  attr_accessible :description, :logo, :name, :latitude, :longitude, :gmaps, :marker_path

  has_many :needs
  #has_many :users

  acts_as_gmappable :process_geocoding => false

  def gmaps4rails_address
  #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
    "ciao"#"#{self.street}, #{self.city}, #{self.country}"
  end

  def gmaps4rails_marker_picture
    {
        "picture" => "assets/firstaid.png",
        "width" => 40,
        "height" => 40,
        #"marker_anchor" => [ 5, 10],
        #"shadow_picture" => "/assets/help.png" ,
        #"shadow_width" => "110",
        #"shadow_height" => "110",
        #"shadow_anchor" => [5, 10],
    }
  end

end
