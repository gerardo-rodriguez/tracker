class DropTableReferralSession < ActiveRecord::Migration
  def change
  	drop_table :referral_session
  end
end
