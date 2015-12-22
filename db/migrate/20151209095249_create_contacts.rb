class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :city
      t.string :phone
      t.string :university
      t.references :contact_subject, index: true, foreign_key: true
      t.text :message

      t.timestamps null: false
    end
  end
end
