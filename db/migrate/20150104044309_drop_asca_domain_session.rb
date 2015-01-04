class DropAscaDomainSession < ActiveRecord::Migration
  def change
  	drop_table :asca_domain_session
  end
end
