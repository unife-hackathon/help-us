class NeedType < ActiveRecord::Base
  attr_accessible :description, :name, :um, :logo

  has_many :needs

end
