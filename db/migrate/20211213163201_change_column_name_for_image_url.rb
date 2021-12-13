class ChangeColumnNameForImageUrl < ActiveRecord::Migration[6.0]
  def change
    rename_column :movies, :image_url, :poster_url
  end
end
