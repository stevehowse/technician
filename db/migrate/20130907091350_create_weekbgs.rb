class CreateWeekbgs < ActiveRecord::Migration
  def change
    create_table :weekbgs do |t|
		t.date :date
      t.timestamps
    end
  end
end
