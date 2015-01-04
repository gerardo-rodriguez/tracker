class CreateAscaDomains < ActiveRecord::Migration
  def change
    create_table :asca_domains do |t|
      t.string :category

      t.timestamps
    end
  end
end
