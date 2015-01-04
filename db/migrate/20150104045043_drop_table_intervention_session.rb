class DropTableInterventionSession < ActiveRecord::Migration
  def change
  	drop_table :intervention_session
  end
end
