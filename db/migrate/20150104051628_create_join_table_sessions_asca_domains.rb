class CreateJoinTableSessionsAscaDomains < ActiveRecord::Migration
  def change
  	create_join_table :sessions, :asca_domains
  end
end
