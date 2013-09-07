class AddDetailsToUser < ActiveRecord::Migration
  def change
  add_column :users, :school_id, :integer
  add_column :users, :teacher, :boolean
  add_column :users, :technician, :boolean
  end
end
