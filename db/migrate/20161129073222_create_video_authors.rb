class CreateVideoAuthors < ActiveRecord::Migration
  def change
    create_table :video_authors do |t|
    	t.belongs_to :nsoj_tv, index: true
    	t.belongs_to :student, index: true
      t.timestamps null: false
    end
  end
end
