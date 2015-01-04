class CreateJoinTableSessionAscaDomain < ActiveRecord::Migration
  def change
		create_join_table :asca_domain, :session
  end
end
