class CreateAdmissionContacts < ActiveRecord::Migration
  def change
    create_table :admission_contacts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :college
      t.string :city

      t.timestamps null: false
    end
  end
end
