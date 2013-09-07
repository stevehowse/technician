class AddColumnsToReqs < ActiveRecord::Migration
  def change
add_column :contents, :schoolclass_id, :integer
add_column :contents, :pupilnumber, :integer
  end
end
