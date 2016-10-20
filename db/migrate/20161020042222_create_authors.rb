class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
    	t.belongs_to :story, index: true
    	t.belongs_to :student, index: true
      t.timestamps null: false
    end
  end
end
