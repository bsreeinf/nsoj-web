class CreateStoryCategories < ActiveRecord::Migration
  def change
    create_table :story_categories do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
