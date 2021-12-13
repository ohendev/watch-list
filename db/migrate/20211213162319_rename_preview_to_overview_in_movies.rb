class RenamePreviewToOverviewInMovies < ActiveRecord::Migration[6.0]
  def change
    rename_column :movies, :preview, :overview
  end
end
