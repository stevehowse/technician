class ChangeDateFormat < ActiveRecord::Migration
  def up
rename_column :contents, :weekbg, :weekbg_id
ALTER TABLE :contents ALTER COlUMN :weekbg_id TYPE :integer 
  end

  def down
  end
end
