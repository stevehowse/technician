class AddDetailsToUserAgain < ActiveRecord::Migration
  def change
add_column :users, :forename, :string
  end
end
