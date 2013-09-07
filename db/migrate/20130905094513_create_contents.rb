class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.integer :user_id
      t.date :weekbg
      t.integer :week
      t.string :day
      t.integer :period
      t.integer :room_id
      t.integer :content

      t.timestamps
    end
  end
end
