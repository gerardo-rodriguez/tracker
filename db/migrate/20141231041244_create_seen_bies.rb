class CreateSeenBies < ActiveRecord::Migration
  def change
    create_table :seen_bies do |t|
      t.string :name

      t.timestamps
    end
  end
end
