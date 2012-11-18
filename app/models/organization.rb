class Organization < ActiveRecord::Base
  attr_accessible :description, :logo, :name

  has_many :needs
  #has_many :users
end
