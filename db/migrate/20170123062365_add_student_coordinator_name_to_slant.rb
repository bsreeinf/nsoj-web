class AddStudentCoordinatorNameToSlant < ActiveRecord::Migration
  def change
    add_column :slants, :student_coordinator_name, :string
end
end
