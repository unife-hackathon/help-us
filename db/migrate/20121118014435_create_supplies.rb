class CreateSupplies < ActiveRecord::Migration
  def change
    create_table :supplies do |t|
      t.integer :quantity
      t.integer :need_id
      t.integer :user_id

      t.timestamps
    end
  end
end
