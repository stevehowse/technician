class ChangeContents < ActiveRecord::Migration
  def up
change_column :contents, :content, :text
  end

  def down
  end
end
