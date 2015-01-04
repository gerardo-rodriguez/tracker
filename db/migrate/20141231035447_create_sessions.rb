class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.text :description

      t.timestamps
    end
  end
end
