class Weekbg < ActiveRecord::Base
 attr_accessible :date
 has_many :userreqs
 has_many :users
end
