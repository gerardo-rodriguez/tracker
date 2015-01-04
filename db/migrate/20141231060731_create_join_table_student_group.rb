class CreateJoinTableStudentGroup < ActiveRecord::Migration
  def change
		create_join_table :student, :group
  end
end
