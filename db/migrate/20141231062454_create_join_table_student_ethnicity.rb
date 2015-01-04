class CreateJoinTableStudentEthnicity < ActiveRecord::Migration
  def change
		create_join_table :student, :ethnicity
  end
end
