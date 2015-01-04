class CreateJoinTableClassificationsStudents < ActiveRecord::Migration
  def change
  	create_join_table :classifications, :students
  end
end
