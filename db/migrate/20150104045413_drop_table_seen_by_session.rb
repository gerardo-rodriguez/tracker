class DropTableSeenBySession < ActiveRecord::Migration
  def change
  	drop_table :seen_by_session
  end
end
