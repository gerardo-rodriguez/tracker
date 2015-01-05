class RenameTableSessionsToLogs < ActiveRecord::Migration
  def change
  	rename_table :sessions, :logs
  end
end
