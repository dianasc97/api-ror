class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :year
      t.string :synopsis
      t.string :director
      t.integer :grade

      t.timestamps
    end
  end
end
