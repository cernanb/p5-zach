class CreateJoinTableSketchColor < ActiveRecord::Migration[5.2]
  def change
    create_table :colors_sketches do |t|
      t.integer :sketch_id
      t.integer :color_id
      t.boolean :background_color
    end
  end
end
