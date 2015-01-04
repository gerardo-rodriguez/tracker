class CreateJoinTableSessionsInterventions < ActiveRecord::Migration
  def change
  	create_join_table :sessions, :interventions
  end
end
