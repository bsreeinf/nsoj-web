class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.references :user, index: true, foreign_key: true
      t.references :batch, index: true, foreign_key: true
      t.attachment :avatar
      t.text :bio

      t.timestamps null: false
    end
  end
end
