class CreateNeedTypes < ActiveRecord::Migration
  def change
    create_table :need_types do |t|
      t.string :name
      t.text :description
      t.string :um
      t.string :icon

      t.timestamps
    end
  end
end
