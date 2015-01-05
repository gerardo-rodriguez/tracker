class RenameTableSessionsStudentsToLogsStudents < ActiveRecord::Migration
  def change
  	rename_table :sessions_students, :logs_students
  	rename_column :logs_students, :session_id, :log_id
  end
end
