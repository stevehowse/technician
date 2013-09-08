class ChangeUserreqs < ActiveRecord::Migration
  def up
rename_column :userreqs, :weekbg, :weekbg_id
  end

  def down
  end
end
