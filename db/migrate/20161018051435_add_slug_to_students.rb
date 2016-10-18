class AddSlugToStudents < ActiveRecord::Migration
  def change
    add_column :students, :slug, :string
    add_index :students, :slug
  end
end
