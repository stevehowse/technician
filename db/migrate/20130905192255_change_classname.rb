class ChangeClassname < ActiveRecord::Migration
  def up
rename_column :timetables, :class_id, :schoolclass_id
  end

  def down
  end
end
