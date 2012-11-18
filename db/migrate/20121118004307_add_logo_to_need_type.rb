class AddLogoToNeedType < ActiveRecord::Migration
  def change
    add_column :need_types, :logo, :string
  end
end
