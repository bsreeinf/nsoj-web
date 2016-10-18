class AddSlugToStudents < ActiveRecord::Migration
  def change
    add_column :students, :slug, :string
    add_index :stories, :slug
  end
end
