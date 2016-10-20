class AddVideoLinkToStories < ActiveRecord::Migration
  def change
    add_column :stories, :video_link, :string
  end
end
