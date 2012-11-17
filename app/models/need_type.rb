class NeedType < ActiveRecord::Base
  attr_accessible :description, :icon, :name, :um

  has_many :needs

end
