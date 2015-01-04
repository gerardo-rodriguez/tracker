class CreateJoinTableStudentClassification < ActiveRecord::Migration
  def change
		create_join_table :student, :classification
  end
end
