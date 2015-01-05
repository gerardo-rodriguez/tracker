class RenameColumnLogsTypesFromSessionIdToLogId < ActiveRecord::Migration
  def change
  	rename_column :logs_types, :session_id, :log_id
  end
end
