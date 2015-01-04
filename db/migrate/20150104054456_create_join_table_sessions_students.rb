class CreateJoinTableSessionsStudents < ActiveRecord::Migration
  def change
  	create_join_table :sessions, :students
  end
end
