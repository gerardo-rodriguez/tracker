class CreateJoinTableSessionsTypes < ActiveRecord::Migration
  def change
  	create_join_table :sessions, :types
  end
end
