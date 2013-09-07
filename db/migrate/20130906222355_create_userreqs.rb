class CreateUserreqs < ActiveRecord::Migration
  def change
    create_table :userreqs do |t|
	t.integer :user_id
	t.date :weekbg
	t.integer :content_id
      t.timestamps
    end
  end
end
