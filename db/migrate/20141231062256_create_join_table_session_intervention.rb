class CreateJoinTableSessionIntervention < ActiveRecord::Migration
  def change
		create_join_table :session, :intervention
  end
end
