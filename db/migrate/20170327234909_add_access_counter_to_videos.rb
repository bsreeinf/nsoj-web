class AddAccessCounterToVideos < ActiveRecord::Migration
  def change
    add_column :nsoj_tvs, :access_counter, :integer, default: 0
  end
end
