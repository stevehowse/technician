class CreateSchoolclasses < ActiveRecord::Migration
  def change
    create_table :schoolclasses do |t|
      t.string :classname

      t.timestamps
    end
  end
end
