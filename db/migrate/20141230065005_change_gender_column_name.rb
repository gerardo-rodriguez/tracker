class ChangeGenderColumnName < ActiveRecord::Migration
  def change
  	rename_column :genders, :type, :classification
  end
end
