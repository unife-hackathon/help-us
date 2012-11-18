class NeedType < ActiveRecord::Base
  attr_accessible :description, :icon, :name, :um, :logo

  has_many :needs

end
