class ChangeUserreqs < ActiveRecord::Migration
  def up
rename_column :userreqs, :weekbg, :weekbg_id
change_column :userreqs, :weekbg_id, :integer
  end

  def down
  end
end
