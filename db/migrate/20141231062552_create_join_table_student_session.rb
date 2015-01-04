class CreateJoinTableStudentSession < ActiveRecord::Migration
  def change
		create_join_table :student, :session
  end
end
