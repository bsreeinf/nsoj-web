class AddVideoCaptionToStories < ActiveRecord::Migration
  def change
    add_column :stories, :video_caption, :string
  end
end
