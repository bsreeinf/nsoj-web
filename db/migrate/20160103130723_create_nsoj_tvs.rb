class CreateNsojTvs < ActiveRecord::Migration
  def change
    create_table :nsoj_tvs do |t|
      t.string :title
      t.string :link
      t.references :nsoj_tv_category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
