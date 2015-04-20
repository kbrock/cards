class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.float :page_x,      :default => 5,  :null => false
      t.float :page_y,      :default => 5,  :null => false
      t.integer :num_box_x, :default => 2,  :null => false
      t.integer :num_box_y, :default => 2,  :null => false
      # box size (optional - calculated from gutter)
      t.float :box_x
      t.float :box_y
      # gutter (optional - calculated from box)
      t.float :gutter_x,  :default => 0.5
      t.float :gutter_y,  :default => 0.5
      # outer gutter (overrides to default of :gutter_{x,y})
      t.float :gutter_t
      t.float :gutter_r
      t.float :gutter_b
      t.float :gutter_l

      t.boolean :extra_x, :default => true,  :null => false
      t.boolean :extra_y, :default => false, :null => false
      t.boolean :dash,    :default => true,  :null => false
      t.timestamps null: false
    end
  end
end
