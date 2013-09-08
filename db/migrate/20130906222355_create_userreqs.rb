class CreateUserreqs < ActiveRecord::Migration
  def change
    create_table :userreqs do |t|
	t.integer :user_id
	t.integer :weekbg_id
	t.integer :content_id
      t.timestamps
    end
  end
end
