class RenameTableReferralsSessionsToReferralsLogs < ActiveRecord::Migration
  def change
  	rename_table :referrals_sessions, :logs_referrals
  	rename_column :logs_referrals, :session_id, :log_id
  end
end
