class RenameJoinTableSessionsTypes < ActiveRecord::Migration
  def change
  	rename_table :sessions_types, :logs_types
  end
end
