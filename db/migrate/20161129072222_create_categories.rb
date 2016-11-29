class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
    	t.belongs_to :story, index: true
    	t.belongs_to :story_category, index: true
      t.timestamps null: false
    end
  end
end
