class Need < ActiveRecord::Base
  attr_accessible :need_type_id, :requested_quantity, :organization_id

  belongs_to :organization
  belongs_to :need_type
  has_many :supplies
  has_many :users, :through => :supply

  # Attachments
  has_attached_file :photo, :styles => {:large => '640x640', :medium => "230x230", :thumb => "128x128" },
                    :path => ":rails_root/public/system/:attachment/:id/:style/:hash",
                    :url => "/system/:attachment/:id/:style/:hash",
                    :hash_secret => ":class/:attachment/:id/:style/:updated_at"

  def percent_completed
    supplies.sum(:quantity) * 100 / requested_quantity
  end

end
