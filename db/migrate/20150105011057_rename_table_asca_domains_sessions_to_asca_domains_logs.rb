class RenameTableAscaDomainsSessionsToAscaDomainsLogs < ActiveRecord::Migration
  def change
  	rename_table :asca_domains_sessions, :asca_domains_logs
  	rename_column :asca_domains_logs, :session_id, :log_id
  end
end
