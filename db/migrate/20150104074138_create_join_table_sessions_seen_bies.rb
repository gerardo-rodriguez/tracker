class CreateJoinTableSessionsSeenBies < ActiveRecord::Migration
  def change
  	create_join_table :sessions, :seen_bies
  end
end
