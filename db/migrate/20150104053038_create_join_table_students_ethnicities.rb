class CreateJoinTableStudentsEthnicities < ActiveRecord::Migration
  def change
  	create_join_table :students, :ethnicities
  end
end
