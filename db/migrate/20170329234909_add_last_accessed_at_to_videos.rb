class AddLastAccessedAtToVideos < ActiveRecord::Migration
  def change
    add_column :nsoj_tvs, :last_accessed_at, :datetime
  end
end
