class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :preview
      t.string :image_url
      t.integer :rating

      t.timestamps
    end
  end
end
