class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.integer :days

      t.timestamps
    end
  end
end
