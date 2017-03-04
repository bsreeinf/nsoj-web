class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :designation
      t.string :speciality
      t.string :description

      t.timestamps null: false
    end
  end
end
