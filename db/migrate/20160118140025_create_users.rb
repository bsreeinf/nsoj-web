class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.string :city
      t.string :pincode
      t.string :state
      t.string :country
      t.string :password_digest
      t.string :activation_digest
      t.string :remember_digest
      t.datetime :activated_at
      t.string :reset_digest
      t.datetime :reset_sent_at
      t.boolean :activated, default: false

      t.timestamps null: false
    end
  end
end
