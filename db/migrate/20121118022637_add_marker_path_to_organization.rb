class AddMarkerPathToOrganization < ActiveRecord::Migration
  def change
    add_column :organizations, :marker_path, :string
  end
end
