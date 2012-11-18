class AddOrganizationIdToNeed < ActiveRecord::Migration
  def change
    add_column :needs, :organization_id, :integer
  end
end
