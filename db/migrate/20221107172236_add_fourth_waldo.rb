class AddFourthWaldo < ActiveRecord::Migration[7.0]
  def change
    add_column :waldo_locations, :waldo4_x1, :integer 
    add_column :waldo_locations, :waldo4_x2, :integer
    add_column :waldo_locations, :waldo4_y1, :integer
    add_column :waldo_locations, :waldo4_y2, :integer
  end
end
