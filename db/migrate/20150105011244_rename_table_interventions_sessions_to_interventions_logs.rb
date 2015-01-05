class RenameTableInterventionsSessionsToInterventionsLogs < ActiveRecord::Migration
  def change
  	rename_table :interventions_sessions, :interventions_logs
  	rename_column :interventions_logs, :session_id, :log_id
  end
end
