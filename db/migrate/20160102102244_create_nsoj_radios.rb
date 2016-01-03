class CreateNsojRadios < ActiveRecord::Migration
  def change
    create_table :nsoj_radios do |t|
      t.string :title
      t.string :link

      t.timestamps null: false
    end
  end
end
