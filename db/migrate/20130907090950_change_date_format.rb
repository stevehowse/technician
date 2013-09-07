class ChangeDateFormat < ActiveRecord::Migration
  def up
rename_column :contents, :weekbg, :weekbg_id
change_column :contents, :weekbg_id, :integer
  end

  def down
  end
end
