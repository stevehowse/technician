class CreateTimetables < ActiveRecord::Migration
  def change
    create_table :timetables do |t|
      t.integer :user_id
      t.integer :week
      t.string :day
      t.integer :period
      t.integer :room_id
      t.integer :class_id
      t.integer :pupilnumber

      t.timestamps
    end
  end
end
