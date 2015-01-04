class DropTableEthnicityStudent < ActiveRecord::Migration
  def change
  	drop_table :ethnicity_student
  end
end
