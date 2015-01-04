class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :ssid
      t.integer :grade_id
      t.integer :gender_id

      t.timestamps
    end
  end
end
