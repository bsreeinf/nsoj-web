class CreateNsojPosts < ActiveRecord::Migration
  def change
    create_table :nsoj_posts do |t|
      t.string :link

      t.timestamps null: false
    end
  end
end
