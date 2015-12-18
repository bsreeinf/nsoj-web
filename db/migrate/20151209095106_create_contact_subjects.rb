class CreateContactSubjects < ActiveRecord::Migration
  def change
    create_table :contact_subjects do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
