class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.references :student, index: true, foreign_key: true
      t.references :story_category, index: true, foreign_key: true
      t.string :title
      t.text :content
      t.attachment :blog_image
      t.string :image_caption

      t.datetime :last_accessed_at

      t.timestamps null: false
    end
  end
end
