class Userreq < ActiveRecord::Base
 
 attr_accessible :weekbg_id, :user_id
  belongs_to :user
  belongs_to  :weekbg
  
    validates_uniqueness_of :user_id, :scope => :weekbg_id
end
