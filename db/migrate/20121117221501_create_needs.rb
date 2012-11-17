class CreateNeeds < ActiveRecord::Migration
  def change
    create_table :needs do |t|
      t.integer :requested_quantity
      t.integer :need_type_id

      t.timestamps
    end
  end
end
