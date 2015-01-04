class AddIndexToStudentGenderId < ActiveRecord::Migration
  def change
  	add_index :students, :gender_id
  end
end
