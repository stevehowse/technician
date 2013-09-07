class School < ActiveRecord::Base
  attr_accessible :periods, :schoolname, :weeks
  has_many  :users
end
