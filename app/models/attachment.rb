class Attachment < ActiveRecord::Base
  attr_accessible :need_id, :photo

  belongs_to :need

  has_attached_file :photo, :styles => {:large => '640x640', :medium => "230x230", :thumb => "128x128" },
                    :path => ":rails_root/public/system/:attachment/:id/:style/:hash",
                    :url => "/system/:attachment/:id/:style/:hash",
                    :hash_secret => ":class/:attachment/:id/:style/:updated_at"

end
