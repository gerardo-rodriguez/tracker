class DropTableSessionStudent < ActiveRecord::Migration
  def change
  	drop_table :session_student
  end
end
