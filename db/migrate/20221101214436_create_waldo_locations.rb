class CreateWaldoLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :waldo_locations do |t|
      t.string :image
      t.integer :waldo1_x1
      t.integer :waldo1_x2
      t.integer :waldo1_y1
      t.integer :waldo1_y2

      t.integer :waldo2_x1
      t.integer :waldo2_x2
      t.integer :waldo2_y1
      t.integer :waldo2_y2

      t.integer :waldo3_x1
      t.integer :waldo3_x2
      t.integer :waldo3_y1
      t.integer :waldo3_y2


      t.timestamps
    end
  end
end
