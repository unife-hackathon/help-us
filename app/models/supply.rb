class Supply < ActiveRecord::Base

  belongs_to :need
  belongs_to :user
  attr_accessible :quantity, :user

  validates_presence_of :user
end
