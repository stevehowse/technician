class Content < ActiveRecord::Base
  attr_accessible :content, :day, :period, :room_id, :user_id, :week, :weekbg_id, :schoolclass_id, :pupilnumber
end
