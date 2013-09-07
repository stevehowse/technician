class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :schoolname
      t.integer :periods
	  t.integer :weeks

      t.timestamps
    end
  end
end
