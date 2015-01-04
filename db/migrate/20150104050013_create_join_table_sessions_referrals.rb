class CreateJoinTableSessionsReferrals < ActiveRecord::Migration
  def change
  	create_join_table :sessions, :referrals
  end
end
