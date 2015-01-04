class CreateJoinTableSessionSeenBy < ActiveRecord::Migration
  def change
		create_join_table :session, :seen_by
  end
end
