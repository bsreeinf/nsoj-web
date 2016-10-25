class CreateAuthorTypes < ActiveRecord::Migration
  def change
    create_table :author_types do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
