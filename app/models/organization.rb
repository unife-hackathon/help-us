class Organization < ActiveRecord::Base
  attr_accessible :description, :logo, :name, :latitude, :longitude, :gmaps, :marker_path

  has_many :needs
  #has_many :users

  acts_as_gmappable :process_geocoding => false

  def gmaps4rails_address
  #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
    "ciao"#"#{self.street}, #{self.city}, #{self.country}"
  end

  def total_needs
    needs.sum(:requested_quantity)
  end

  def total_supply
    needs.inject(0){|memo, need| memo += need.supplies.sum(:quantity)}
  end

  def percent_completed
    total_supply * 100 / total_needs
  end

end
