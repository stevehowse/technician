class Userreq < ActiveRecord::Base
 
 attr_accessible :weekbg_id, :user_id
  belongs_to :user
  belongs_to  :weekbg
end
