class RemoveStoryCategoryIdFromStories < ActiveRecord::Migration
  def change
    remove_column :stories, :story_category_id, :integer
  end
end
