class CreateJoinTableSessionReferral < ActiveRecord::Migration
  def change
		create_join_table :session, :referral
  end
end
