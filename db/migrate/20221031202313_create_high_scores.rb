class CreateHighScores < ActiveRecord::Migration[7.0]
  def change
    create_table :high_scores do |t|
      t.string :user
      t.float :score

      t.timestamps
    end
  end
end
