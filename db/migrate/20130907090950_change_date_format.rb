class ChangeDateFormat < ActiveRecord::Migration
  def up
rename_column :contents, :weekbg, :weekbg_id

  end

  def down
  end
end
