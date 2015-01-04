class CreateJoinTableGroupsStudents < ActiveRecord::Migration
  def change
		create_join_table :students, :groups
  end
end
