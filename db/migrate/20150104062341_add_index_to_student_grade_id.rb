class AddIndexToStudentGradeId < ActiveRecord::Migration
  def change
  	add_index :students, :grade_id
  end
end
