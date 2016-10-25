class AddAuthorTypeIdToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :author_type_id, :integer, default: 1
    add_index :authors, :author_type_id
  end
end
