class DropTableCategorySession < ActiveRecord::Migration
  def change
  	drop_table :category_session
  end
end
