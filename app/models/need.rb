class Need < ActiveRecord::Base
  attr_accessible :need_type_id, :requested_quantity

  #has_many :attachments
  belongs_to :organization
  belongs_to :need_type

end
