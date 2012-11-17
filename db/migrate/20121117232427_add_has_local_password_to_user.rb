class AddHasLocalPasswordToUser < ActiveRecord::Migration
  def change
    add_column :users, :has_local_password, :boolean
  end
end
