class CreateAdmissionForms < ActiveRecord::Migration
  def change
    create_table :admission_forms do |t|

      t.timestamps null: false
    end
  end
end
