class RenameTableSeenBiesSessionsToSeenBiesLogs < ActiveRecord::Migration
  def change
  	rename_table :seen_bies_sessions, :logs_seen_bies
  	rename_column :logs_seen_bies, :session_id, :log_id
  end
end
