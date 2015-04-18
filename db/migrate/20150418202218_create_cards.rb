class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :page_x
      t.string :page_y
      t.string :num_box_x
      t.string :num_box_y
      t.string :gutter_tx
      t.string :gutter_ty
      t.string :gutter_bx
      t.string :gutter_by

      t.timestamps null: false
    end
  end
end
