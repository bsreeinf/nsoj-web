class CreateNsojTvCategories < ActiveRecord::Migration
  def change
    create_table :nsoj_tv_categories do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
