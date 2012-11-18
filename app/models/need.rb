class Need < ActiveRecord::Base
  attr_accessible :need_type_id, :requested_quantity, :organization_id, :attachments_attributes

  belongs_to :organization
  belongs_to :need_type
  has_many :supplies
  has_many :users, :through => :supply

  delegate :name, :to => :need_type

  # Attachments
  has_many :attachments
  accepts_nested_attributes_for :attachments

  def percent_completed
    percent = supplies.sum(:quantity) * 100 / requested_quantity
    percent > 100 ? 100 : percent
  end

end
