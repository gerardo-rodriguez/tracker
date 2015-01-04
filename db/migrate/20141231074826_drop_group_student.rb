class DropGroupStudent < ActiveRecord::Migration
  def change
  	drop_table :group_student
  end
end
