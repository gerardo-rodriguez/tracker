class CreateJoinTableSessionCategory < ActiveRecord::Migration
  def change
		create_join_table :session, :category
  end
end
